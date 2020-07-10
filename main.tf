data "tfe_ssh_key" "github" {
  name         = "github"
  organization = var.organization
}

resource "tfe_workspace" "workspace" {
  name         = var.name
  organization = var.organization

  auto_apply            = var.auto_apply
  file_triggers_enabled = true
  queue_all_runs        = true
  ssh_key_id            = data.tfe_ssh_key.github.id
  terraform_version     = var.terraform_version
  working_directory     = var.working_directory

  vcs_repo {
    identifier         = var.repo
    branch             = var.branch
    ingress_submodules = false
    oauth_token_id     = var.oauth_token_id
  }
}

