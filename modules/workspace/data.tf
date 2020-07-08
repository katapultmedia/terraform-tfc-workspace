data "aws_kms_secrets" "vars" {
  secret {
    name    = "aws_access_key_id"
    payload = var.aws_access_key_id

    context = {
      // TODO ADD ACCESS KEY ID
      account = "",
      type    = "access-key"
    }
  }

  secret {
    name    = "aws_secret_access_key"
    payload = var.aws_secret_access_key

    context = {
      // TODO ADD SECRET ACCESS KEY
      account = "",
      type    = "secret-key"
    }
  }
}
