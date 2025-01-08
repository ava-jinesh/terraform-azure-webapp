# terraform-azure-webapp
 here's a step-by-step guide for a simple workflow to deploy a basic "Hello World" web app on Azure App Service using Terraform, GitHub Actions, and a free tier eligible subscription


# following directory structure:

``` 
terraform-azure-webapp/
├── .github/ 
│   └── workflows/ 
│       └── main.yml
├── environments/ 
│   ├── dev/ 
│   │   └── variables.tfvars
│   └── prod/ 
│       └── variables.tfvars 
├── modules/ 
│   └── app_service/ 
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── terraform/ 
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── README.md
└── .gitignore

```