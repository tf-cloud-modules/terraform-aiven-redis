terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aiven = {
      source  = "aiven/aiven"
      version = ">= 2.0.0, < 3.0.0"
    }
  }
}