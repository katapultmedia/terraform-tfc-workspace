# terraform-tfc-workspace

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| tfe | ~> 0.15.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| auto\_apply | Whether to automatically apply changes when a Terraform plan is successful. Defaults to false. | `bool` | `false` | no |
| branch | The repository branch that Terraform will execute from. Default to master. | `any` | n/a | yes |
| file\_triggers\_enabled | n/a | `bool` | `true` | no |
| hcl\_vars | n/a | `map` | `{}` | no |
| ingress\_submodules | n/a | `bool` | `false` | no |
| name | Name of the workspace. | `any` | n/a | yes |
| oauth\_token\_id | The OAuth token id for the VCS provider. | `any` | n/a | yes |
| organization | The name of the organization the workspace is under. | `any` | n/a | yes |
| queue\_all\_runs | n/a | `bool` | `true` | no |
| repo | A reference to your VCS repository in the format :org/:repo where :org and :repo refer to the organization and repository in your VCS provider. | `any` | n/a | yes |
| secrets | A map of custom secrets. | `map` | `{}` | no |
| ssh\_key | The github ssh key for tfe | `any` | n/a | yes |
| terraform\_version | The version of Terraform to use for this workspace. Defaults to the latest available version. | `string` | `"latest"` | no |
| variables | A map of custom variables. | `map` | `{}` | no |
| working\_directory | A relative path that Terraform will execute within. Defaults to the root of your repository. | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| auto\_apply | Whether to automatically apply changes when a Terraform plan is successful. Defaults to false. |
| branch | The repository branch that Terraform will execute from. Default to master. |
| identifier | A reference to your VCS repository in the format :org/:repo where :org and :repo refer to the organization and repository in your VCS provider. |
| name | The name of the workspace. |
| organization | The name of the organization the workspace is under. |
| terraform\_version | The version of Terraform to use for this workspace. Defaults to the latest available version. |
| working\_directory | A relative path that Terraform will execute within. Defaults to the root of your repository. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
