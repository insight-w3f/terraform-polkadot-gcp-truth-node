# terraform-polkadot-gcp-truth-node

[![open-issues](https://img.shields.io/github/issues-raw/insight-w3f/terraform-polkadot-gcp-truth-node?style=for-the-badge)](https://github.com/insight-w3f/terraform-polkadot-gcp-truth-node/issues)
[![open-pr](https://img.shields.io/github/issues-pr-raw/insight-w3f/terraform-polkadot-gcp-truth-node?style=for-the-badge)](https://github.com/insight-w3f/terraform-polkadot-gcp-truth-node/pulls)

## Features

This module...

## Terraform Versions

For Terraform v0.12.0+

## Usage

```
module "this" {
    source = "github.com/insight-w3f/terraform-polkadot-gcp-truth-node"

}
```
## Examples

- [defaults](https://github.com/insight-w3f/terraform-polkadot-gcp-truth-node/tree/master/examples/defaults)

## Known  Issues
No issue is creating limit on this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| chain | Which Polkadot chain to join | `string` | `"kusama"` | no |
| instance\_type | Instance type | `string` | `"n1-standard-1"` | no |
| node\_name | Name of the node | `string` | `""` | no |
| private\_key\_path | Path to private key | `string` | `""` | no |
| private\_subnet\_id | The id of the private subnet | `string` | n/a | yes |
| project | Name of the project for node name | `string` | `"project"` | no |
| public\_key\_path | The public ssh key. key\_name takes precidence | `string` | `""` | no |
| public\_subnet\_id | The id of the public subnet | `string` | n/a | yes |
| region | The AWS region where the bucket should be located | `string` | `"us-east-1"` | no |
| root\_volume\_size | Root volume size | `string` | `0` | no |
| security\_group\_id | The id of the security group to run in | `string` | n/a | yes |
| ssh\_user | Username for SSH | `string` | `"ubuntu"` | no |

## Outputs

| Name | Description |
|------|-------------|
| reader\_aws\_access\_key\_id | n/a |
| reader\_aws\_secret\_access\_key | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Testing
This module has been packaged with terratest tests

To run them:

1. Install Go
2. Run `make test-init` from the root of this repo
3. Run `make test` again from root

## Authors

Module managed by [Richard Mah](https://github.com/shinyfoil)

## Credits

- [Anton Babenko](https://github.com/antonbabenko)

## License

Apache 2 Licensed. See LICENSE for full details.