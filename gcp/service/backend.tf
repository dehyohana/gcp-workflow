terraform {
  backend "gcs" {
    bucket      = "terraform-gcp-workflow"
    prefix      = "terraform/service/state"
    credentials = "credentials.json"
  }
}
