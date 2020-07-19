# terraform-tfc-workspace

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| tfe | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| auto\_apply | Whether to automatically apply changes when a Terraform plan is successful. Defaults to false. | `bool` | `false` | no |
| branch | The repository branch that Terraform will execute from. Default to master. | `any` | n/a | yes |
| github\_tfe\_ssh\_key | The github ssh key for tfe | `any` | n/a | yes |
| hcl\_vars | n/a | `map` | `{}` | no |
| name | Name of the workspace. | `any` | n/a | yes |
| oauth\_token\_id | The OAuth token id for the VCS provider. | `any` | n/a | yes |
| organization | The name of the organization the workspace is under. | `any` | n/a | yes |
| repo | A reference to your VCS repository in the format :org/:repo where :org and :repo refer to the organization and repository in your VCS provider. | `any` | n/a | yes |
| secrets | A map of custom secrets. | `map` | `{}` | no |
| terraform\_version | The version of Terraform to use for this workspace. Defaults to the latest available version. | `string` | `"latest"` | no |
| variables | A map of custom variables. | `map` | `{}` | no |
| working\_directory | A relative path that Terraform will execute within. Defaults to the root of your repository. | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| name | The name of the workspace. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
