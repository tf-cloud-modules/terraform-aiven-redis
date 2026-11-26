# Complete Aiven Redis Cluster

> **Deprecated:** This example is retained for the final Redis module release and requires Aiven provider `>= 4.55.2, < 4.56.0`. Provider 4.56.0 removes the Redis resources. No Redis-to-Valkey migration is performed.

Configuration in this directory creates an Aiven Redis cluster with following features:

- Aiven Redis Cluster
- Aiven Redis User

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 4.55.2, < 4.56.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_redis"></a> [redis](#module\_redis) | ../.. | n/a |
| <a name="module_redis_user"></a> [redis\_user](#module\_redis\_user) | ../../modules/user | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
