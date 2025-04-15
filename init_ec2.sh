#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

# Install necessary packages
sudo apt update -y
sudo apt install nginx amazon-ec2-utils -y
sudo systemctl start nginx
sudo systemctl enable nginx


INSTANCEID=$(ec2-metadata --instance-id | cut -d " " -f 2)
AZ=$(ec2-metadata --availability-zone | cut -d " " -f 2)
REGION=${AZ::-1}
INSTANCEBOOTTIME=$(uptime -s)
INDEX="/var/www/html/index.nginx-debian.html"

# Create the index to demonstrate that the ALB is distributing the load between instances/AZ when refreshing the page
if [ -f "$INDEX" ]; then
    sudo rm -rf "$INDEX"
fi

sudo cat <<EOF > $INDEX
<!DOCTYPE html>
<html>
<head>
    <title>EC2 Instance Info</title>
</head>
<body>
    <h1>Hello World</h1>
    <p>This is the instance <strong>${INSTANCEID}</strong>.</p>
    <p>It was started at <strong>${INSTANCEBOOTTIME}</strong>.</p>
    <p>It is running in availability zone <strong>${AZ}</strong> (region: <strong>${REGION}</strong>).</p>
</body>
</html>
EOF