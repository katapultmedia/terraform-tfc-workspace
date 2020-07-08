terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "katapultmedia"

    workspaces {
      name = "katapultmedia-tfc"
    }
  }
}

provider "tfe" {
  token = var.tfe_token
}
