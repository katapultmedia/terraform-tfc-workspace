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

resource "tfe_variable" "aws_access_key" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = trimspace(data.aws_kms_secrets.vars.plaintext["aws_access_key_id"])
  category     = "env"
  workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "aws_secret_access_key" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = trimspace(data.aws_kms_secrets.vars.plaintext["aws_secret_access_key"])
  category     = "env"
  sensitive    = "true"
  workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "aws_default_region" {
  key          = "AWS_DEFAULT_REGION"
  value        = var.aws_default_region
  category     = "env"
  workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "secrets" {
  for_each = var.custom_secrets

  key          = each.key
  value        = each.value
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "vars" {
  for_each = var.custom_variables

  key          = each.key
  value        = each.value
  category     = "terraform"
  workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "hcl_vars" {
  for_each = var.custom_hcl_vars

  key          = each.key
  hcl          = true
  value        = each.value
  category     = "terraform"
  workspace_id = tfe_workspace.workspace.id
}

