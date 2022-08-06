resource "aiven_redis_user" "this" {
  count                = var.create ? 1 : 0
  password             = var.password
  project              = var.project
  redis_acl_categories = var.redis_acl_categories
  redis_acl_channels   = var.redis_acl_channels
  redis_acl_commands   = var.redis_acl_commands
  redis_acl_keys       = var.redis_acl_keys
  service_name         = var.service_name
  username             = var.username
}