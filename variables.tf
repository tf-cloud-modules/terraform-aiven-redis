variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "cloud_name" {
  description = "Defines where the cloud provider and region where the service is hosted in."
  type        = string
  default     = "aws-us-east-1"
}

variable "ip_filter" {
  description = "IP filter."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "maintenance_window_dow" {
  description = "Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc."
  type        = string
  default     = "thursday"
}

variable "maintenance_window_time" {
  description = "Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format."
  type        = string
  default     = "01:00:00"
}

variable "migration_dbname" {
  description = "Database name for bootstrapping the initial connection."
  type        = string
  default     = ""
}

variable "migration_host" {
  description = "Hostname or IP address of the server where to migrate data from."
  type        = string
  default     = ""
}

variable "migration_ignore_dbs" {
  description = "Comma-separated list of databases, which should be ignored during migration."
  type        = string
  default     = ""
}

variable "migration_method" {
  description = "The migration method to be used."
  type        = string
  default     = ""
}

variable "migration_password" {
  description = "Password for authentication with the server where to migrate data from."
  sensitive   = true
  type        = string
  default     = ""
}

variable "migration_port" {
  description = "Port number of the server where to migrate data from."
  type        = string
  default     = ""
}

variable "migration_ssl" {
  description = "The server where to migrate data from is secured with SSL."
  type        = string
  default     = ""
}

variable "migration_username" {
  description = "User name for authentication with the server where to migrate data."
  type        = string
  default     = ""
}

variable "plan" {
  description = "Defines what kind of computing resources are allocated for the service."
  type        = string
  default     = "hobbyist"
}

variable "project" {
  description = "Aiven Cloud Project Name"
  type        = string
}

variable "project_vpc_id" {
  description = "Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC."
  type        = string
  default     = null
}

variable "public_access_prometheus" {
  description = "Allow clients to connect to prometheus from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "public_access_redis" {
  description = "Allow clients to connect to redis from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "recovery_basebackup_name" {
  description = "Name of the basebackup to restore in forked service."
  type        = string
  default     = ""
}

variable "redis_acl_channels_default" {
  description = "Default ACL for pub/sub channels used when Redis user is created."
  type        = string
  default     = ""
}

variable "redis_io_threads" {
  description = "Redis IO thread count."
  type        = string
  default     = ""
}

variable "redis_lfu_decay_time" {
  description = "LFU maxmemory-policy counter decay time in minutes."
  type        = string
  default     = "1"
}

variable "redis_lfu_log_factor" {
  description = "Counter logarithm factor for volatile-lfu and allkeys-lfu maxmemory-policies."
  type        = string
  default     = "10"
}

variable "redis_maxmemory_policy" {
  description = "Redis maxmemory-policy."
  type        = string
  default     = "volatile-ttl"
}

variable "redis_notify_keyspace_events" {
  description = "Set notify-keyspace-events option."
  type        = string
  default     = ""
}

variable "redis_number_of_databases" {
  description = "Number of redis databases."
  type        = string
  default     = ""
}

variable "redis_persistence" {
  description = "Redis persistence."
  type        = string
  default     = ""
}

variable "redis_pubsub_client_output_buffer_limit" {
  description = "Pub/sub client output buffer hard limit in MB."
  type        = string
  default     = ""
}

variable "redis_ssl" {
  description = "Enable Redis SSL."
  type        = bool
  default     = false
}

variable "redis_timeout" {
  description = "Redis idle connection timeout."
  type        = string
  default     = "0"
}

variable "service_to_fork_from" {
  description = "Name of another service to fork from."
  type        = string
  default     = ""
}

variable "static_ips" {
  description = "Static IPs that are going to be associated with this service."
  type        = list(string)
  default     = []
}

variable "service_name" {
  description = "Specifies the actual name of the service."
  type        = string
}

variable "termination_protection" {
  description = "Prevents the service from being deleted."
  type        = bool
  default     = false
}