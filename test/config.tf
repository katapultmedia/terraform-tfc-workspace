terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "km-sandbox"

    workspaces {
      name = "terraform-tfc-workspace"
    }
  }
}

provider "tfe" {
  token = var.tfe_token
}