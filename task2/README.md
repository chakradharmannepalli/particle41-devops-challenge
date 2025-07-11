#  Terraform Infrastructure Deployment

**Terraform** Terraform to create the infrastructure in AWS to deploy the SimpleTimeService containerized application. The infrastructure includes:

A VPC with 2 public and 2 private subnets.

A ECS (Elastic Container Service) cluster to run the containerized application in the private subnets.

A Load Balancer in the public subnets to route traffic to the ECS tasks

  
- Containerized with **Docker** and can be deployed anywhere Docker is supported.

## Prerequisites
Before deploying the infrastructure and the application, ensure you have the following:

Terraform installed on your local machine.

AWS CLI installed and configured with the necessary IAM permissions.

An AWS Account with sufficient permissions to create VPCs, ECS, Load Balancers, and IAM roles

## Running the Application

### Option 1: Running with Terraform

1. **Install terraform**
   ```bash
   wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee              /etc/apt/sources.list.d/hashicorp.list
    sudo apt update && sudo apt install terraform
2. **Install aws cli**
   ```bash
   sudo snap install aws-cli --classic
3. **Clone the repository to your local machine**

   ```bash
   git clone https://github.com/chakradharmannepalli/particle41-devops-challenge.git
   cd particle41-devops-challenge/task2/terrraform
4. **Configure aws cli**
  This command will ask for:

      AWS Access Key ID: Your AWS access key.

      AWS Secret Access Key: Your AWS secret key.

      Default region name: The AWS region where you want to deploy the infrastructure (e.g., us-east-1).

      Default output format: You can leave this as json or choose your preferred format.

   ```bash
   aws configure
5. **The use teraform init to start the terraform**
   ```bash
   terraform init
6. **To check the plan and to check if there are any errors check with terraform plan**
   ```bash
   terraform plan
7. **Finally execute the terraform apply**
   ```bash
   terraform apply
8. **To access the application**
   ```bash
   curl http://<load_balancer_url>
<img width="851" height="180" alt="Screenshot 2025-07-11 171952" src="https://github.com/user-attachments/assets/779337fe-5c82-4555-b8ca-201b06e48af3" />
<img width="1919" height="964" alt="Screenshot 2025-07-11 171928" src="https://github.com/user-attachments/assets/369a411f-bcbb-4aa2-b579-a2254349df24" />


9. **If you want to tear down the infrastructure after testing, you can run**
    ```bash
    terraform destroy
