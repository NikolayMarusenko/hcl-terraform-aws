# terraform-env-structure

Generalized Terraform structure for Infra Landscape

## Run linting

```bash
pre-commit run --all-files
```

<!-- BEGIN_TF_DOCS -->




## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.3 |



## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | = 1.5.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.72.1 |
| <a name="requirement_local"></a> [local](#requirement\_local) | ~> 2.5.2 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.6.3 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Target Environment for deployment | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The AWS region to deploy, e.g. eu-central-1 | `string` | n/a | yes |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | The AWS IAM role ARN used for deployment (e.g. arn:aws:iam::012345678910:role/EKSDeployerRole) | `string` | n/a | yes |
| <a name="input_role_permissions_boundary"></a> [role\_permissions\_boundary](#input\_role\_permissions\_boundary) | Define permission boundary for IAM Roles | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Specifies object tags key and value. This applies to all resources created by this module. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tags"></a> [tags](#output\_tags) | Demo output |

## Resources

| Name | Type |
|------|------|
| [random_integer.example](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer) | resource |
<!-- END_TF_DOCS -->
