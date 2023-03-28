# Aiven Redis Terraform module

Terraform module which creates Aiven Redis resources

## Usage

```hcl
module "redis" {
  source       = "tf-cloud-modules/redis/aiven"
  project      = "test"
  service_name = "test"
}
```


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 4.0.0, < 5.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | 3.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aiven_redis.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/redis) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_name"></a> [cloud\_name](#input\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. | `string` | `"aws-us-east-1"` | no |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_ip_filter_object"></a> [ip\_filter\_object](#input\_ip\_filter\_object) | Allow incoming connections from CIDR address block, e.g. '10.20.0.0/16'. | `list(any)` | <pre>[<br>  {<br>    "network": "0.0.0.0/0"<br>  }<br>]</pre> | no |
| <a name="input_maintenance_window_dow"></a> [maintenance\_window\_dow](#input\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc. | `string` | `"thursday"` | no |
| <a name="input_maintenance_window_time"></a> [maintenance\_window\_time](#input\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format. | `string` | `"01:00:00"` | no |
| <a name="input_migration"></a> [migration](#input\_migration) | Migrate data from existing server. | `list(any)` | `[]` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | Defines what kind of computing resources are allocated for the service. | `string` | `"hobbyist"` | no |
| <a name="input_private_access_prometheus"></a> [private\_access\_prometheus](#input\_private\_access\_prometheus) | Allow clients to connect to prometheus with a DNS name that always resolves to the service's private IP addresses. | `bool` | `false` | no |
| <a name="input_private_access_redis"></a> [private\_access\_redis](#input\_private\_access\_redis) | Allow clients to connect to redis with a DNS name that always resolves to the service's private IP addresses. | `bool` | `false` | no |
| <a name="input_privatelink_access_prometheus"></a> [privatelink\_access\_prometheus](#input\_privatelink\_access\_prometheus) | Enable prometheus. | `bool` | `false` | no |
| <a name="input_privatelink_access_redis"></a> [privatelink\_access\_redis](#input\_privatelink\_access\_redis) | Enable redis. | `bool` | `false` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name | `string` | n/a | yes |
| <a name="input_project_vpc_id"></a> [project\_vpc\_id](#input\_project\_vpc\_id) | Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC. | `string` | `null` | no |
| <a name="input_public_access_prometheus"></a> [public\_access\_prometheus](#input\_public\_access\_prometheus) | Allow clients to connect to prometheus from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_public_access_redis"></a> [public\_access\_redis](#input\_public\_access\_redis) | Allow clients to connect to redis from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_recovery_basebackup_name"></a> [recovery\_basebackup\_name](#input\_recovery\_basebackup\_name) | Name of the basebackup to restore in forked service. | `string` | `""` | no |
| <a name="input_redis_acl_channels_default"></a> [redis\_acl\_channels\_default](#input\_redis\_acl\_channels\_default) | Default ACL for pub/sub channels used when Redis user is created. | `string` | `""` | no |
| <a name="input_redis_io_threads"></a> [redis\_io\_threads](#input\_redis\_io\_threads) | Redis IO thread count. | `number` | `null` | no |
| <a name="input_redis_lfu_decay_time"></a> [redis\_lfu\_decay\_time](#input\_redis\_lfu\_decay\_time) | LFU maxmemory-policy counter decay time in minutes. | `string` | `"1"` | no |
| <a name="input_redis_lfu_log_factor"></a> [redis\_lfu\_log\_factor](#input\_redis\_lfu\_log\_factor) | Counter logarithm factor for volatile-lfu and allkeys-lfu maxmemory-policies. | `string` | `"10"` | no |
| <a name="input_redis_maxmemory_policy"></a> [redis\_maxmemory\_policy](#input\_redis\_maxmemory\_policy) | Redis maxmemory-policy. | `string` | `"volatile-ttl"` | no |
| <a name="input_redis_notify_keyspace_events"></a> [redis\_notify\_keyspace\_events](#input\_redis\_notify\_keyspace\_events) | Set notify-keyspace-events option. | `string` | `""` | no |
| <a name="input_redis_number_of_databases"></a> [redis\_number\_of\_databases](#input\_redis\_number\_of\_databases) | Number of redis databases. | `number` | `null` | no |
| <a name="input_redis_persistence"></a> [redis\_persistence](#input\_redis\_persistence) | Redis persistence. | `string` | `""` | no |
| <a name="input_redis_pubsub_client_output_buffer_limit"></a> [redis\_pubsub\_client\_output\_buffer\_limit](#input\_redis\_pubsub\_client\_output\_buffer\_limit) | Pub/sub client output buffer hard limit in MB. | `number` | `null` | no |
| <a name="input_redis_ssl"></a> [redis\_ssl](#input\_redis\_ssl) | Enable Redis SSL. | `bool` | `false` | no |
| <a name="input_redis_timeout"></a> [redis\_timeout](#input\_redis\_timeout) | Redis idle connection timeout. | `string` | `"0"` | no |
| <a name="input_service_integrations"></a> [service\_integrations](#input\_service\_integrations) | List of the service integrations. | `list(any)` | `[]` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_service_to_fork_from"></a> [service\_to\_fork\_from](#input\_service\_to\_fork\_from) | Name of another service to fork from. | `string` | `""` | no |
| <a name="input_static_ips"></a> [static\_ips](#input\_static\_ips) | Static IPs that are going to be associated with this service. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of the service tags. | `list(any)` | `[]` | no |
| <a name="input_termination_protection"></a> [termination\_protection](#input\_termination\_protection) | Prevents the service from being deleted. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloud_name"></a> [cloud\_name](#output\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. |
| <a name="output_components"></a> [components](#output\_components) | Service component information objects. |
| <a name="output_disk_space"></a> [disk\_space](#output\_disk\_space) | The disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_maintenance_window_dow"></a> [maintenance\_window\_dow](#output\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. |
| <a name="output_maintenance_window_time"></a> [maintenance\_window\_time](#output\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. |
| <a name="output_plan"></a> [plan](#output\_plan) | Defines what kind of computing resources are allocated for the service. |
| <a name="output_project"></a> [project](#output\_project) | Aiven Cloud Project Name. |
| <a name="output_redis"></a> [redis](#output\_redis) | Redis server provided values. |
| <a name="output_redis_user_config"></a> [redis\_user\_config](#output\_redis\_user\_config) | Redis user configurable settings. |
| <a name="output_service_host"></a> [service\_host](#output\_service\_host) | The hostname of the service. |
| <a name="output_service_integrations"></a> [service\_integrations](#output\_service\_integrations) | Service integrations to specify when creating a service. |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Specifies the actual name of the service. |
| <a name="output_service_password"></a> [service\_password](#output\_service\_password) | Password used for connecting to the service, if applicable. |
| <a name="output_service_port"></a> [service\_port](#output\_service\_port) | The port of the service. |
| <a name="output_service_type"></a> [service\_type](#output\_service\_type) | Aiven internal service type code. |
| <a name="output_service_uri"></a> [service\_uri](#output\_service\_uri) | URI for connecting to the service. |
| <a name="output_service_username"></a> [service\_username](#output\_service\_username) | Username used for connecting to the service. |
| <a name="output_static_ips"></a> [static\_ips](#output\_static\_ips) | Static IPs that are going to be associated with this service. |
<!-- END_TF_DOCS -->