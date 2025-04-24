## Introduction

Ce repo contient le PoC permettant de répondre au projet élaboré dans le cadre du cours AWS du M1 l'ESGI.  
L'objectif du projet est de déployer une infrastructure hautement disponible sur AWS.  
Il utilise CloudFormation pour gérer l'infrastructure via une approche infrastructure as code.

Les consignes sont disponibles ici : [📜 consignes.txt](./consignes)

## 🏗️ Organisation des Stacks CloudFormation

Les ressources AWS sont organisées en stacks CloudFormation, chacune englobant des composants spécifiques selon une logique de regroupement :

- [stack-network-m1-src-aws.yaml](./stack-network-m1-src-aws.yaml) : Regroupe les éléments de réseau (VPC, subnets, NAT Gateways, etc.)
- [stack-security-m1-src-aws.yaml](./stack-security-m1-src-aws.yaml) : Contient les composants liés à la sécurité (Security Groups, etc.)
- [stack-iam-permissions-m1-src-aws.yaml](./stack-iam-permissions-m1-src-aws.yaml) : Rôles et permissions IAM
- [stack-system-m1-src-aws.yaml](./stack-system-m1-src-aws.yaml) : Composants système : EC2, ASG, ALB...

## 🛠️ Technologies Utilisées

- AWS CloudFormation  
- AWS EC2 (EC2, AutoScalingGroup, ALB, Security Groups)  
- AWS VPC (Subnets, IGW, NAT Gateway)  
- AWS S3  
- Script Bash : [init_ec2.sh](./init_ec2.sh)

## ✅ Well Architected Framework

Le document devant justifier comment s'intègre les ressources imposées dans le well architected framework se situe ici : [well-architected-framework](./well-architected-framework)

## 📸 Proof Of Concept

Les captures d'écrans de la console AWS justifiant du bon fonctionnement de l'infrastructure se trouvent dans le dossier : [images](./images)

## 📽️ Support de présentation

Le PowerPoint de la présentation orale est disponible ici : [Support de présentation](./powerpoint_projet_aws_m1_src.pdf)
