terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aiven = {
      source  = "aiven/aiven"
      version = ">= 4.55.2, < 4.56.0"
    }
  }
}
