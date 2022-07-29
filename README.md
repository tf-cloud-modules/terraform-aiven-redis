# terraform-aiven-redis
Aiven Redis Terraform module

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 2.0.0, < 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | 2.7.3 |

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
| <a name="input_ip_filter"></a> [ip\_filter](#input\_ip\_filter) | IP filter. | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_maintenance_window_dow"></a> [maintenance\_window\_dow](#input\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc. | `string` | `"thursday"` | no |
| <a name="input_maintenance_window_time"></a> [maintenance\_window\_time](#input\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format. | `string` | `"01:00:00"` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | Defines what kind of computing resources are allocated for the service. | `string` | `"hobbyist"` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name | `string` | n/a | yes |
| <a name="input_project_vpc_id"></a> [project\_vpc\_id](#input\_project\_vpc\_id) | Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC. | `string` | `null` | no |
| <a name="input_public_access_prometheus"></a> [public\_access\_prometheus](#input\_public\_access\_prometheus) | Allow clients to connect to prometheus from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_public_access_redis"></a> [public\_access\_redis](#input\_public\_access\_redis) | Allow clients to connect to redis from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_redis_lfu_decay_time"></a> [redis\_lfu\_decay\_time](#input\_redis\_lfu\_decay\_time) | LFU maxmemory-policy counter decay time in minutes | `string` | `"1"` | no |
| <a name="input_redis_lfu_log_factor"></a> [redis\_lfu\_log\_factor](#input\_redis\_lfu\_log\_factor) | Counter logarithm factor for volatile-lfu and allkeys-lfu maxmemory-policies | `string` | `"10"` | no |
| <a name="input_redis_maxmemory_policy"></a> [redis\_maxmemory\_policy](#input\_redis\_maxmemory\_policy) | Redis maxmemory-policy. | `string` | `"volatile-ttl"` | no |
| <a name="input_redis_ssl"></a> [redis\_ssl](#input\_redis\_ssl) | Enable Redis SSL. | `bool` | `false` | no |
| <a name="input_redis_timeout"></a> [redis\_timeout](#input\_redis\_timeout) | Redis idle connection timeout. | `string` | `"0"` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_static_ips"></a> [static\_ips](#input\_static\_ips) | Static IPs that are going to be associated with this service. | `list(string)` | `[]` | no |
| <a name="input_termination_protection"></a> [termination\_protection](#input\_termination\_protection) | Prevents the service from being deleted. | `bool` | `false` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->