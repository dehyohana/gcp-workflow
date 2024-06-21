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
