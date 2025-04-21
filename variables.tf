variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "us-east-2"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Amazon Machine Image ID for EC2 instance"
  type        = string
  default     = "ami-0c960bff39f5b1c70" # Updated to a valid AMI ID for us-east-2
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "firstpem" # Update this with your key pair name
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "my-terraform-aws-bucket"
}