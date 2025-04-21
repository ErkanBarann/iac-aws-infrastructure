provider "aws" {
  region = "us-east-1" // Updated to use the us-east-1 region
}

# VPC Creation
resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "TerraformVPC"
  }
}

# Subnet Creation
resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "PublicSubnet"
  }
}

# Security Group Creation
resource "aws_security_group" "allow_ssh" {
  vpc_id = aws_vpc.main_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "AllowSSH"
  }
}

# EC2 Instance Creation
resource "aws_instance" "web_server" {
  ami           = "ami-0c02fb55956c7d316" // Updated to a valid AMI ID for us-east-1
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  key_name      = var.key_name

  tags = {
    Name = "TerraformEC2"
  }
}

# S3 Bucket Creation
resource "aws_s3_bucket" "terraform_bucket" {
  bucket = "my-terraform-aws-bucket-04212025-unique" // Updated bucket name to make it globally unique

  tags = {
    Name = "TerraformS3Bucket"
  }
}

# Outputs
output "ec2_public_ip" {
  value = aws_instance.web_server.public_ip
}
