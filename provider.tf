provider "aws" {
  region = "eu-west-1"

  # The below IAM role has to be created in the client account, where the resource has to be created
  # This role will be assumed by the IAM role in the Automation account
  # This is smaple code, ensure to implement (MFA, External ID verification as per requirement)
  # For testing purpose both the Role (Automation & Client Accounts) are not restricted. Kindly implement restriction as per requirement
  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/iar_Automation_account"
  }
}