# 🚀 Terraform AWS Infrastructure Automation

## 📌 Overview
This project automates AWS infrastructure provisioning using Terraform. It sets up a complete cloud environment, including a VPC, public subnet, security group, EC2 instance, and S3 bucket.

## 🛠️ Prerequisites
Before deploying the infrastructure, ensure you have:
- ✅ Terraform installed on your system
- ✅ AWS CLI configured with appropriate credentials
- ✅ An SSH key pair created in AWS for EC2 access

## 🚀 Deployment Steps

1️⃣ **Clone the repository:**
```sh
git clone https://github.com/ErkanBarann/terraform-aws-infra-automation.git
cd terraform-aws-infra-automation
```

2️⃣ **Initialize Terraform:**
```sh
terraform init
```

3️⃣ **Plan the deployment:**
```sh
terraform plan
```

4️⃣ **Apply the configuration:**
```sh
terraform apply -auto-approve
```

5️⃣ **Retrieve the EC2 instance public IP:**
```sh
terraform output ec2_public_ip
```

## 🌍 AWS Infrastructure Components

| Component        | Description |
|-----------------|-------------|
| 🏢 **VPC**      | Private network (`10.0.0.0/16`) |
| 🌐 **Subnet**   | Public subnet (`10.0.1.0/24`) |
| 🔒 **Security Group** | Allows SSH access (Port 22) |
| 💻 **EC2 Instance** | `t2.micro`, Amazon Linux 2 |
| 📂 **S3 Bucket** | Private S3 bucket (`my-terraform-aws-bucket`) |

## 🗑️ Cleanup Instructions
To destroy all created infrastructure, run:
```sh
terraform destroy -auto-approve
```

## 📂 File Structure
```
├── main.tf         # Terraform configuration file
├── variables.tf    # Variables for customization
├── outputs.tf      # Output values
├── README.md       # Documentation
```

## 📌 Author
- **👨‍💻 Erkan Baran**
- 🌐 [GitHub Profile](https://github.com/ErkanBarann)
- 🔗 [LinkedIn](https://www.linkedin.com/in/erkan-baran)

💡 *This project helps automate AWS infrastructure provisioning using Terraform, ensuring efficiency, scalability, and reproducibility.* 🚀