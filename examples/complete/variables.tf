variable "project" {
  description = "Aiven Cloud Project Name"
  type        = string
}

variable "password" {
  description = "The password of the Redis User."
  sensitive   = true
  type        = string
}

variable "service_name" {
  description = "Specifies the actual name of the service."
  type        = string
}

variable "username" {
  description = "The actual name of the Redis User."
  type        = string
}