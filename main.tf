
data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}
# This example, am not using TF state
resource "aws_instance" "git-action" {
  ami = "ami-0d7f394c51e3e7d3e"
  instance_type = "t2.micro"
  tags = {
    Name = "Launched-by-Github-Action"
  }
}
