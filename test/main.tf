variable "tfe_token" {}

provider "tfe" {
  token = var.tfe_token
}

module "core" {
  source = "../"

  organization       = "organization-test"
  branch             = "githubbranch-test"
  github_tfe_ssh_key = "test-ssh-key"
  working_directory  = "tfe-workspace-working-dir"
  name               = "tfe-test-workspace"
  oauth_token_id     = "alkasiopejk"
  repo               = "tst-repo"
}
