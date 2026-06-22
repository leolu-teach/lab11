locals {
  env = regex(".*/live/([^/]+)/.*", get_terragrunt_dir())[0]
}
remote_state {
  backend = "s3"
  config = {
    bucket         = "acs730-<YOUR-NAME>-tfstate"
    key            = "${local.env}/${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "acs730-tf-locks"
    encrypt        = true
  }
  generate = { path = "backend.tf", if_exists = "overwrite" }
}
generate "provider" {
  path = "provider.tf"; if_exists = "overwrite"
  contents = "provider \"aws\" { region = \"us-east-1\" }"
}
