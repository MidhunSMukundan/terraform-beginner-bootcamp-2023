terraform {
  cloud {
    organization = "Vedh"

    workspaces {
      name = "terra-house-1"
    }
  }
}

terraform {
  required_providers {


    aws = {
      source  = "hashicorp/aws"
      version = "5.18.1"
    }

  }
}
