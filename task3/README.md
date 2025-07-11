# Terraform remote state management with S3/DynamoDB and a GitHub Actions CI/CD pipeline

1. **Clone the repository to your local machine**

   ```bash
   git clone https://github.com/chakradharmannepalli/particle41-devops-challenge.git
   cd particle41-devops-challenge/task3/terrraform
2. **Configure aws cli**
  This command will ask for:

      AWS Access Key ID: Your AWS access key.

      AWS Secret Access Key: Your AWS secret key.

      Default region name: The AWS region where you want to deploy the infrastructure (e.g., us-east-1).

      Default output format: You can leave this as json or choose your preferred format.

   ```bash
       aws configure
2. **Create S3 bucket**
   ```bash
    aws s3api create-bucket --bucket my-tf-state-bucket --region us-east-1

4. **Enable versioning**
   ```bash
    aws s3api put-bucket-versioning --bucket my-tf-state-bucket \
      --versioning-configuration Status=Enabled

4. **Create DynamoDB table**
   ```bash
   aws dynamodb create-table \
     --table-name terraform-lock-table \
     --attribute-definitions AttributeName=LockID,AttributeType=S \
     --key-schema AttributeName=LockID,KeyType=HASH \
     --billing-mode PAY_PER_REQUEST
2. **The use teraform init to start the terraform**
   ```bash
   terraform init
3. **To check the plan and to check if there are any errors check with terraform plan**
   ```bash
   terraform plan
4. **Finally execute the terraform apply**
   ```bash
   terraform apply
5.  **If you want to tear down the infrastructure after testing, you can run**
    ```bash
    terraform destroy
6. **Manually delete S3 content and bucket**
   ```bash
    aws s3 rb s3://my-tf-state-bucket --force
7. **Delete DynamoDB table**
   ```bash
    aws dynamodb delete-table --table-name terraform-lock-table
