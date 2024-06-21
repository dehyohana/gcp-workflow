module "workflow" {
  source = "../modules/workflow"

  workflow_name            = var.workflow_name
  workflow_description     = var.workflow_description
  workflow_definition_path = var.workflow_definition_path
}
