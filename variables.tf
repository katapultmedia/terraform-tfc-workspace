// TFC Config

variable "auto_apply" {
  default     = false
  description = "Whether to automatically apply changes when a Terraform plan is successful. Defaults to false."
}

variable "name" {
  description = "Name of the workspace."
}

variable "organization" {
  description = "The name of the organization the workspace is under."
}

variable "oauth_token_id" {
  description = "The OAuth token id for the VCS provider."
}

variable "terraform_version" {
  default     = "latest"
  description = "The version of Terraform to use for this workspace. Defaults to the latest available version."
}

// VCS

variable "repo" {
  description = "A reference to your VCS repository in the format :org/:repo where :org and :repo refer to the organization and repository in your VCS provider."
}

variable "branch" {
  description = "The repository branch that Terraform will execute from. Default to master."
}

variable "working_directory" {
  description = "A relative path that Terraform will execute within. Defaults to the root of your repository."
}

// App Vars

variable "secrets" {
  default     = {}
  description = "A map of custom secrets."
  type        = map
}

variable "variables" {
  default     = {}
  description = "A map of custom variables."
  type        = map
}

variable "hcl_vars" {
  type    = map
  default = {}
}