output "cloud_name" {
  description = "Defines where the cloud provider and region where the service is hosted in."
  value       = try(aiven_redis.this[0].cloud_name, "")
}

output "components" {
  description = "Service component information objects."
  value       = try(aiven_redis.this[0].components, "")
}

output "disk_space" {
  description = "The disk space of the service, possible values depend on the service type, the cloud provider and the project."
  value       = try(aiven_redis.this[0].disk_space, "")
}

output "id" {
  description = "The ID of this resource."
  value       = try(aiven_redis.this[0].id, "")
}

output "maintenance_window_dow" {
  description = "Day of week when maintenance operations should be performed."
  value       = try(aiven_redis.this[0].maintenance_window_dow, "")
}

output "maintenance_window_time" {
  description = "Time of day when maintenance operations should be performed."
  value       = try(aiven_redis.this[0].maintenance_window_time, "")
}

output "plan" {
  description = "Defines what kind of computing resources are allocated for the service."
  value       = try(aiven_redis.this[0].plan, "")
}

output "project_vpc_id" {
  description = "Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC."
  value       = try(aiven_redis.this[0].project_vpc_id, "")
}

output "redis" {
  description = "Redis server provided values."
  value       = try(aiven_redis.this[0].redis, "")
}

output "redis_user_config" {
  description = "Redis user configurable settings."
  sensitive   = true
  value       = try(aiven_redis.this[0].redis_user_config, "")
}

output "service_host" {
  description = "The hostname of the service."
  value       = try(aiven_redis.this[0].service_host, "")
}

output "service_integrations" {
  description = "Service integrations to specify when creating a service."
  value       = try(aiven_redis.this[0].service_integrations, "")
}

output "service_password" {
  description = "Password used for connecting to the service, if applicable."
  sensitive   = true
  value       = try(aiven_redis.this[0].service_password, "")
}

output "service_port" {
  description = "The port of the service."
  value       = try(aiven_redis.this[0].service_port, "")
}

output "service_type" {
  description = "Aiven internal service type code."
  value       = try(aiven_redis.this[0].service_type, "")
}

output "service_uri" {
  description = "URI for connecting to the service."
  sensitive   = true
  value       = try(aiven_redis.this[0].service_uri, "")
}

output "service_username" {
  description = "Username used for connecting to the service."
  value       = try(aiven_redis.this[0].service_username, "")
}

output "static_ips" {
  description = "Static IPs that are going to be associated with this service."
  value       = try(aiven_redis.this[0].static_ips, "")
}

