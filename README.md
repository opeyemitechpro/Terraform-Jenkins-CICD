# Deploy a Jenkins Server on AWS using Terraform

This repo is part of the a DevSecOps Project that Automates the Provisioning, Deployment and Monitoring of an 11-Microservice e-Commerce App on Kubernetes (EKS) 

The project is documented here [Hands-On DevSecOps Project - Automating Provisioning, Deployment and Monitoring of an 11-Microservice e-Commerce App on EKS](https://opeyemitechpro.github.io/my-projects/)

This repo contains terraform script to setup and delpoy a Jenkins server on AWS

The Terrafom script will do the following:

- Provision an ec2 instance of type t2.large (You can easily set a different instance type in the terraform.tfvars file)
- Provision the ec2 instance in the default VPC
- Configure the security group to expose (1) all the required ports for this project. The required ports are: 22, 25, 80, 443, 465, 8080, 9000 and 9100. (The ports and their descriptions are listed in the terraform.tfvars file)
- Create an AWS Key-Pair file and download the file unto your terraform working directory on your local machine (the folder from where you initiated the terraform apply command)
- Using the included Bash script (in the user_data field), it will bootstrap and install the following:

    - Ubuntu 24.04 (the latest version)
    - Jenkins
    - Docker
    - SonarQube Docker Container
    - eksctl
    - aws CLI
    - kubectl
    - node_exporter
    - trivy scanner
    - gitleaks
- Output the Public IP address and the SSH connection string for the newly provisioned Jenkins server

- The terraform script will also be used to destroy the server and its resources during the clean-up stage of this project.



