resource "tfe_workspace" "workspace" {
  name         = var.name
  organization = var.organization

  auto_apply            = var.auto_apply
  file_triggers_enabled = var.file_triggers_enabled
  queue_all_runs        = var.queue_all_runs
  ssh_key_id            = var.ssh_key
  terraform_version     = var.terraform_version
  working_directory     = var.working_directory

  vcs_repo {
    identifier         = var.repo
    branch             = var.branch
    ingress_submodules = var.ingress_submodules
    oauth_token_id     = var.oauth_token_id
  }
}

