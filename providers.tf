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
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "5.18.1"
    }

  }
}
