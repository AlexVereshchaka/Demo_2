#General Data
data "aws_region" "current" {}

data "aws_availability_zones" "available" {
  state = "available"
}

#General Variables
variable "env" {
  description = "The environment"
  default     = "demo"
}

variable "app" {
  description = "The app"
  default     = "my_app"
}

variable "region" {
  description = "The AWS region"
  default     = "us-east-2"
}

#Variables for Network
variable "cidr_block" {
  description = "The CIDR block of network"
  default     = "10.0.0.0/16"
}

variable "aws_dns" {
  type    = bool
  default = true
}

locals {
  number_public_subnets  = 2
  number_private_subnets = 2
  azs                    = data.aws_availability_zones.available.names
  number_bastion_servers = 2
  number_web_servers     = 2
}

#Variables for Application Load Balancer
variable "app_port" {
  description = "The application port"
  default     = 80
}

variable "app_target_port" {
  description = "The application port"
  default     = 8080
}

variable "health_check_path" {
  description = "The path for health check web servers"
  default     = "/"
}