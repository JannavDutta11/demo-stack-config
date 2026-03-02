deployment "workspace_1" {
  workspace = "terraform_azure_demo"
}
 
deployment "workspace_2" {
  workspace = "azure-demo-2-linking"
 
  depends_on = [
    deployment.workspace_1
  ]
}
