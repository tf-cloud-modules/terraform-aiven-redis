# Aiven Redis User Terraform module

## Usage

```hcl
module "redis_user" {
  source  = "tf-cloud-modules/redis/aiven//modules/user"
  project      = "test"
  service_name = "test"
  username     = "test"
}

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | 3.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aiven_redis_user.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/redis_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name. | `string` | n/a | yes |
| <a name="input_redis_acl_categories"></a> [redis\_acl\_categories](#input\_redis\_acl\_categories) | Defines command category rules. | `list(string)` | `[]` | no |
| <a name="input_redis_acl_channels"></a> [redis\_acl\_channels](#input\_redis\_acl\_channels) | Defines the permitted pub/sub channel patterns. | `list(string)` | <pre>[<br>  "*"<br>]</pre> | no |
| <a name="input_redis_acl_commands"></a> [redis\_acl\_commands](#input\_redis\_acl\_commands) | Defines rules for individual commands. | `list(string)` | `[]` | no |
| <a name="input_redis_acl_keys"></a> [redis\_acl\_keys](#input\_redis\_acl\_keys) | Defines key access rules. | `list(string)` | `[]` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | The actual name of the Redis User. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_password"></a> [password](#output\_password) | The password of the Redis User. |
| <a name="output_project"></a> [project](#output\_project) | Identifies the project this resource belongs to. |
| <a name="output_redis_acl_categories"></a> [redis\_acl\_categories](#output\_redis\_acl\_categories) | Defines command category rules. |
| <a name="output_redis_acl_channels"></a> [redis\_acl\_channels](#output\_redis\_acl\_channels) | Defines the permitted pub/sub channel patterns. |
| <a name="output_redis_acl_commands"></a> [redis\_acl\_commands](#output\_redis\_acl\_commands) | Defines rules for individual commands. |
| <a name="output_redis_acl_keys"></a> [redis\_acl\_keys](#output\_redis\_acl\_keys) | Defines key access rules. |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Specifies the name of the service that this resource belongs to. |
| <a name="output_username"></a> [username](#output\_username) | The actual name of the Redis User. |
<!-- END_TF_DOCS -->