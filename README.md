# AWS + Terraform
This page describes how to create a cloud infrastructure on AWS using Terraform. 

### Tool versions:
- Terraform - 1.02
- AWS CLI - 2.2.23

## Description
This solution was created to demonstrate how creating a cloud infrastructure on AWS based on "Infrastructure as a code" using Terraform looks like. It consists of Terraform module "network" and "main" Terraform files to create infrastructure, an AWS Application Load Balancer which returns a web page containing a public IP of current web server.

The solution creates a Virtual Private Cloud, EC2 instances and an Application Load Balancer according to requirements.

## Folders and Files
-vpc - "network" module


## Configuration
Main configuration files are the next:
- /vpc
  - variables.tf - Module variables 
  - vpc.tf - Virtual Private Cloud
  - EC2.tf - Bastion and Web Servers
  - server.tftpl - Apache server with a custom web page   
  - ALB.tf - Application Load Balancer
  - outputs.tf - Module outputs
- /project/
  - main.tf - Infrastructure configuration
  - outputs.tf - Main outputs


  
