# Hello World Example
    This repository is used to define the IaC, which will be used by github action CI/CD.Example to create a EC2 

## Assumption/Pre-requisite
- Source Account = Automation Account (Github self hosted runner are deployed in ECS Fargate)
- Target Account = Client Account, The actual resource to be created
- IAM ECS task role for self hosted github runner in Source Account
- IAM role to be assumed by the ECS task in Target Account

## Notes
- Define the github action pipeline in the directory - .github/workflow (default location)
- This repository show a example code to create EC2 machine in the target account
- Implement terraform state as per requirement
- Restrict the Role permission restrictive as per the requirement in the Source & Target Account