## Introduction

Ce repo contient le PoC permettant de répondre au projet élaboré dans le cadre du cours AWS du M1 l'ESGI. L'objectif du projet est de déployer une infrastructure hautement disponible sur AWS. Il utilise CloudFormation pour gérer l'infrastructure via une approche infrastructure as code.

Les consignes sont disponibles ici : `consignes.txt`

## Organisation des Stacks CloudFormation

Les ressources AWS sont organisées en stacks CloudFormation, chacune englobant des composants spécifiques selon une logique de regroupement par fonctionnalité et type de ressource :

- `stack-network-m1-srcaws.yaml` : Regroupe les éléments de réseau, tels que le VPC, les sous-réseaux, NAT Gateways, etc. Etablissant la fondation du réseau sur lequel les autres ressources seront déployées.

- `stack-security-m1-src-aws.yaml` : Contient les composantes liées à la sécurité, comme les groupes de sécurité, définissant les règles qui régissent le trafic entrant et sortant pour protéger les ressources.

- `stack-iam-permissions.yaml` : Contient les différents rôles et permissions IAM qui sont rattachés aux ressources de l'infrastructure pour qu'elles puissent intéragirent entre elles.

- `stack-system-m1-src-aws.yaml` : Comprend les ressources système, y compris les instances EC2, le groupe d'auto-scaling (ASG) et le load balancer (ALB), assurant le déploiement et le fonctionnement efficace des services.

Chaque stack est conçue pour gérer des ressources interdépendantes dans une catégorie donnée, ce qui simplifie la maintenance. 

## Technologies Utilisées

- AWS CloudFormation
- AWS EC2 (EC2, AutoScalingGroup, Application Load Balancer, Security Groups)
- AWS VPC (Subnets, Internet Gateways, NAT Gateways)
- AWS S3
- Script Bash (init_ec2.sh)

## Well Archicted Framework

Le document demandé se situe ici : well-archicted-framework

## Proof Of Concept

Les captures d'écrans de la console AWS se trouve dans le dossier image comme demandé, justifiant du bon fonctionnement du déploiement de l'infrastructure as code. 