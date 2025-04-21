output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main_vpc.id
}

output "subnet_id" {
  description = "ID of the created Subnet"
  value       = aws_subnet.public_subnet.id
}

output "security_group_id" {
  description = "ID of the created Security Group"
  value       = aws_security_group.allow_ssh.id
}

output "s3_bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.terraform_bucket.id
}