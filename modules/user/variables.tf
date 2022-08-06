variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "password" {
  description = "The password of the Redis User."
  sensitive   = true
  type        = string
}

variable "project" {
  description = "Aiven Cloud Project Name"
  type        = string
}

variable "redis_acl_categories" {
  description = "Defines command category rules."
  type        = list(string)
  default     = []
}

variable "redis_acl_channels" {
  description = "Defines the permitted pub/sub channel patterns."
  type        = list(string)
  default     = ["*"]
}

variable "redis_acl_commands" {
  description = "Defines rules for individual commands."
  type        = list(string)
  default     = []
}

variable "redis_acl_keys" {
  description = "Defines key access rules."
  type        = list(string)
  default     = []
}

variable "service_name" {
  description = "Specifies the actual name of the service."
  type        = string
}

variable "username" {
  description = "The actual name of the Redis User."
  type        = string
}