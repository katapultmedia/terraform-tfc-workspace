variable "application_name" {
  description = "The name of the application"
}

variable "aws_access_key_id" {
  description = "AWS access key for the created workspaces"
}

variable "aws_default_region" {
  description = "AWS default region for the created workspaces"
}

variable "aws_secret_access_key" {
  description = "AWS secret key for the created workspaces"
}

variable "organization" {
  description = "The name of the organization the application belongs to."
}

variable "oauth_token_id" {
  description = "The OAuth token id for the VCS provider."
}

variable "tfe_token" {
  default = ""
}

variable "vcs_repo" {
  description = "The VCS repo where the Terraform exists."
}
