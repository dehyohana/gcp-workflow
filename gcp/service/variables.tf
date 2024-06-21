#GCP Variables
variable "credentials" {
  type        = string
  description = "Service account JSON credentials for Google Cloud Platform"
}

variable "project" {
  type        = string
  description = "Project to be used"
}

variable "region" {
  type        = string
  description = "region to be used"
}

#Workflow variables
variable "workflow_name" {
  type        = string
  description = "Name of the Workflow"
}

variable "workflow_description" {
  type        = string
  description = "Workflow description (optional)"
  default     = null
}

variable "workflow_definition_path" {
  type        = string
  description = "Path to workflow code to be executed. The size limit is 128KB"
}

#Scheduler variables
variable "scheduler_id" {
  type        = string
  description = "The name of the job."
}

variable "schedule_time" {
  type        = string
  description = "Describes the schedule on which the job will be executed (Schedules are specified using unix-crron format. E.g. every minute: * * * * *, every 3 hours: 0 */3 * * *, every Monday at 9:00: 0 9 * * 1)."
}

variable "time_zone" {
  type        = string
  description = "Specifies the time zone to be used in interpreting schedule. The value of this field must be a time zone name from the tz database."
}

variable "terraform_service_account" {
  type        = string
  description = "service account email used to run the terraform commands"
}

variable "body_json_path" {
  type        = string
  description = "Path to JSON file to be used as request body."
}
