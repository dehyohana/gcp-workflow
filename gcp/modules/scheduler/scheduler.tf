resource "google_cloud_scheduler_job" "post_workflow_scheduler" {
  count = var.http_method == "POST" ? 1 : 0

  name        = var.scheduler_id
  description = "Post scheduler job"
  schedule    = var.schedule_time
  time_zone   = var.time_zone

  http_target {
    http_method = "POST"
    uri         = var.workflow_uri
    oauth_token {
      service_account_email = data.google_service_account.terraform_service_account.email
    }
    headers = {
      "Content-type" = "aplication/json"
    }
    body = base64encode(jsonencode({
      "arguments" : var.body_json_path != "" ? jsonencode(jsondecode(file(var.body_json_path))) : "{}", "callLogLevel" : "CALL_LOG_LEVEL_UNSPECIFIED"
    }))
  }
}

resource "google_cloud_scheduler_job" "get_workflow_scheduler" {
  count = var.http_method == "GET" ? 1 : 0

  name        = var.scheduler_id
  description = "Get scheduler job"
  schedule    = var.schedule_time
  time_zone   = var.time_zone

  http_target {
    http_method = "GET"
    uri         = var.workflow_uri
  }
}
