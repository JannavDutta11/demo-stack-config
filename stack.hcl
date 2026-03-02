stack {
  name = "demo-stack"
  description = "Demo stack linking two workspaces"
}
 
deployment "terraform_azure_demo" {
  workspace = "terraform_azure_demo"
}
 
deployment "azure-demo-2-linking" {
  workspace = "azure-demo-2-linking"
 
  depends_on = [
    deployment.terraform_azure_demo
  ]
}
