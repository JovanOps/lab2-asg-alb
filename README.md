# AWS Terraform Lab 2 — ASG behind ALB

## Overview
Infrastructure built with Terraform in **eu-central-1 (Frankfurt)**:
- VPC + Internet Gateway
- **2 public subnets** (multi-AZ)
- Security Groups
- Launch Template (Ubuntu + nginx via user_data)
- Auto Scaling Group (ASG)
- Application Load Balancer (ALB) + Target Group + Listener (HTTP :80)

## What I validated
- Opened the **ALB DNS** and confirmed the custom page:
  **“JovanOps Lab #2 — ASG behind ALB (Terraform)”**
- Verified **ASG behavior**: terminating an instance triggers a replacement (Activity tab shows events).
<img width="1920" height="945" alt="Screenshot (1188)" src="https://github.com/user-attachments/assets/d905f40a-3e77-423a-83c4-ae6faf454aea" />

## Run
```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
