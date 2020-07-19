provider "aws" {
  region = "us-west-2"
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
