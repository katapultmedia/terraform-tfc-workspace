output "name" {
  description = "The name of the workspace."
  value       = var.name
}

output "organization" {
  description = "The name of the organization the workspace is under."
  value       = var.organization
}

output "auto_apply" {
  description = "Whether to automatically apply changes when a Terraform plan is successful. Defaults to false."
  value       = var.auto_apply
}

output "terraform_version" {
  description = "The version of Terraform to use for this workspace. Defaults to the latest available version."
  value       = var.terraform_version
}

output "working_directory" {
  description = "A relative path that Terraform will execute within. Defaults to the root of your repository."
  value       = var.working_directory
}

output "identifier" {
  description = "A reference to your VCS repository in the format :org/:repo where :org and :repo refer to the organization and repository in your VCS provider."
  value       = var.repo
}

output "branch" {
  description = "The repository branch that Terraform will execute from. Default to master."
  value       = var.branch
}