deployment "workspace_1" {
  source = "app.terraform.io/myterraform10/terraform_azure_demo"
}
 
deployment "workspace_2" {
  source = "app.terraform.io/myterraform10/azure-demo-2-linking"
 
  depends_on = [
    deployment.workspace_1
  ]
}
