resource "tfe_workspace" "workspace" {
  name         = var.name
  organization = var.organization

  auto_apply = var.auto_apply

  ssh_key_id        = var.ssh_key
  terraform_version = var.terraform_version
  working_directory = var.working_directory

  vcs_repo {
    identifier         = var.repo
    branch             = var.branch
    ingress_submodules = false
    oauth_token_id     = var.oauth_token_id
  }
}

