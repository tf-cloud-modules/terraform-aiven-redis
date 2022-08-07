output "id" {
  description = "The ID of this resource."
  value       = try(aiven_redis_user.this[0].id, "")
}

output "password" {
  description = "The password of the Redis User."
  value       = try(aiven_redis_user.this[0].password, "")
  sensitive   = true
}

output "project" {
  description = "Identifies the project this resource belongs to."
  value       = try(aiven_redis_user.this[0].project, "")
}

output "redis_acl_categories" {
  description = "Defines command category rules."
  value       = try(aiven_redis_user.this[0].redis_acl_categories, "")
}

output "redis_acl_channels" {
  description = "Defines the permitted pub/sub channel patterns."
  value       = try(aiven_redis_user.this[0].redis_acl_channels, "")
}

output "redis_acl_commands" {
  description = "Defines rules for individual commands."
  value       = try(aiven_redis_user.this[0].redis_acl_commands, "")
}

output "redis_acl_keys" {
  description = "Defines key access rules. "
  value       = try(aiven_redis_user.this[0].redis_acl_keys, "")
}

output "service_name" {
  description = "Specifies the name of the service that this resource belongs to."
  value       = try(aiven_redis_user.this[0].service_name, "")
}

output "username" {
  description = "The actual name of the Redis User."
  value       = try(aiven_redis_user.this[0].username, "")
}