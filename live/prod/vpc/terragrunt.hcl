include "root" { path = find_in_parent_folders() }
terraform { source = "../../../modules/vpc" }
inputs = { env = "prod", vpc_cidr = "10.1.0.0/16" }
