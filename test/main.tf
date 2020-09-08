provider "aws" {
  region = "us-west-1"
}

variable "tfe_token" {
  default = ""
}
variable "ssh_key" {
  default = ""
}

module "core" {
  source = "../"

  organization      = "organization-test"
  branch            = "master"
  ssh_key           = var.ssh_key
  working_directory = "/test"
  name              = "terraform-tfc-workspace"
  oauth_token_id    = "alkasiopejk"
  repo              = "katapultmedia/terraform-tfc-workspace"
}
