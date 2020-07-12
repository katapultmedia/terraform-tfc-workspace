locals {
  application_name = "academy"
  db_username      = "${local.application_name}dba"
}

data "aws_availability_zones" "this" {
  state = "available"
}

module "default_tags" {
  source = "git::https://github.com/cloudposse/terraform-null-label.git?ref=0.16.0"

  tags = {
    "Application" = "testapplication",
    "Customer"    = "testcustomer",
    "Environment" = "testde"
  }
}

module "label" {
  source = "git::https://github.com/cloudposse/terraform-null-label.git?ref=0.16.0"

  namespace = "app"
  name      = "dev"
  stage     = "localapplication"
}
