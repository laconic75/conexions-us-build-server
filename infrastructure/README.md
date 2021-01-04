# DevOps Plumbing Infrastructure

### Structure
Provider: AWS   
Modules:
* [terraform-aws-web-application](https://github.com/laconic75/terraform-aws-web-application)

---

### Variables
##### Required
* availability_zone: AWS Availability Zone 
* ebs_size: EBS Size of additional volume
* hostname: Hostname, to be used on Route53
* standard_tags: Tags to be used on the AWS Instance
* vpc: AWS VPC ID
##### Optional
region: AWS Region
web_server_has_public_ip: default true
iam_instance_profile: Instance profile for server
key_name: AWS SSH key name
subnet_name: Name(not ID) of the subnet that the instance will be created in

### To Run
Initialize Terraform
```bash
terraform init
```
Get Terraform modules
```bash
terraform get
```
Plan changes
```bash
terraform plan -var-file $(terraform workspace show).tfvars -out $(terraform workspace show).out
```
Apply changes
```bash
terraform apply $(terraform workspace show).out
```
