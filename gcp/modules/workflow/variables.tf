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
