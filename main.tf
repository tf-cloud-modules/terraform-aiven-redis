resource "aiven_redis" "this" {
  count                   = var.create ? 1 : 0
  cloud_name              = var.cloud_name
  maintenance_window_dow  = var.maintenance_window_dow
  maintenance_window_time = var.maintenance_window_time
  plan                    = var.plan
  project                 = var.project
  project_vpc_id          = var.project_vpc_id
  static_ips              = var.static_ips
  service_name            = var.service_name
  termination_protection  = var.termination_protection

  redis_user_config {

    dynamic "ip_filter_object" {
      for_each = var.ip_filter_object
      content {
        network     = lookup(ip_filter_object.value, "network")
        description = lookup(ip_filter_object.value, "description", null)
      }
    }

    public_access {
      prometheus = var.public_access_prometheus
      redis      = var.public_access_redis
    }

    private_access {
      prometheus = var.private_access_prometheus
      redis      = var.private_access_redis
    }

    privatelink_access {
      prometheus = var.privatelink_access_prometheus
      redis      = var.privatelink_access_redis
    }

    recovery_basebackup_name                = var.recovery_basebackup_name
    redis_acl_channels_default              = var.redis_acl_channels_default
    redis_io_threads                        = var.redis_io_threads
    redis_lfu_decay_time                    = var.redis_lfu_decay_time
    redis_lfu_log_factor                    = var.redis_lfu_log_factor
    redis_maxmemory_policy                  = var.redis_maxmemory_policy
    redis_notify_keyspace_events            = var.redis_notify_keyspace_events
    redis_number_of_databases               = var.redis_number_of_databases
    redis_persistence                       = var.redis_persistence
    redis_pubsub_client_output_buffer_limit = var.redis_pubsub_client_output_buffer_limit
    redis_ssl                               = var.redis_ssl
    redis_timeout                           = var.redis_timeout
    service_to_fork_from                    = var.service_to_fork_from
  }

  dynamic "service_integrations" {
    for_each = var.service_integrations
    content {
      integration_type    = lookup(service_integrations.value, "integration_type", null)
      source_service_name = lookup(service_integrations.value, "source_service_name", null)
    }
  }

  dynamic "tag" {
    for_each = var.tags
    content {
      key   = lookup(tag.value, "key", null)
      value = lookup(tag.value, "value", null)
    }
  }

  lifecycle {
    # We are ignoring a migration block to it's one-off nature.
    ignore_changes = [redis_user_config["migration"]]
  }

}