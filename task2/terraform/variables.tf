variable "region" {
  description = "AWS deployment region"
  type        = string
  default     = "us-east-1"
}

locals {
  account_id = data.aws_caller_identity.current.account_id
}

data "aws_caller_identity" "current" {}
