provider "aws" {
  region = "us-west-2"
}

module "core" {
  source = "../"
}
