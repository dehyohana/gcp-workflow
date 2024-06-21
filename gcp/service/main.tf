module "workflow" {
  source = "../modules/workflow"

  workflow_name            = var.workflow_name
  workflow_description     = var.workflow_description
  workflow_definition_path = var.workflow_definition_path
}

module "scheduler" {
  source = "../modules/scheduler"

  terraform_service_account = var.terraform_service_account
  scheduler_id              = var.scheduler_id
  body_json_path            = var.body_json_path
  schedule_time             = var.schedule_time
  time_zone                 = var.time_zone
  workflow_uri              = "https://workflowexecutions.googleapis.com/v1/${module.workflow.workflow_id}/executions"
  http_method               = "POST"
}
