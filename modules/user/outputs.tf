output "id" {
  description = "The ID of this resource."
  value       = try(aiven_redis_user.this[0].id, "")
}

output "password" {
  description = ""
  value       = try(aiven_redis_user.this[0].password, "")
  sensitive   = true
}

output "project" {
  description = ""
  value       = try(aiven_redis_user.this[0].project, "")
}

output "redis_acl_categories" {
  description = ""
  value       = try(aiven_redis_user.this[0].redis_acl_categories, "")
}

output "redis_acl_channels" {
  description = ""
  value       = try(aiven_redis_user.this[0].redis_acl_channels, "")
}

output "redis_acl_commands" {
  description = ""
  value       = try(aiven_redis_user.this[0].redis_acl_commands, "")
}

output "redis_acl_keys" {
  description = ""
  value       = try(aiven_redis_user.this[0].redis_acl_keys, "")
}

output "service_name" {
  description = ""
  value       = try(aiven_redis_user.this[0].service_name, "")
}

output "username" {
  description = ""
  value       = try(aiven_redis_user.this[0].username, "")
}