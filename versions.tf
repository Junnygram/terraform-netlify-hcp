terraform {
  required_version = ">= 1.6.0"

  cloud {
    organization = "junnygram-org"

    workspaces {
      name = "netlify-site"
    }
  }

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}




