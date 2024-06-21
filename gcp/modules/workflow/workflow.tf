resource "google_workflows_workflow" "terraform_workflow" {
  name        = var.workflow_name
  description = var.workflow_description

  source_contents = file(var.workflow_definition_path)
}
