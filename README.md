# tf\_helm\_secret-store-csi-driver

This module will deploy secret-store-csi-driver secret-store-csi-driver namespace.

## Usage

```hcl
module "secret-store-csi-driver" {
  source                           = "github.com/evry-ace/secrets-store-csi-driver"
  secrets-store-csi-driver_version = "${var.secrets-store-csi-driver_version}"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| secrets-store-csi-driver_version | Secret store version | string | `""` | yes |
| secrets-store-csi-driver_namespace | Namespace | string | `secrets-store-csi-driver_version` | no |

## Authors

Module is maintained by the EVRY ACE Team.

## License

MIT License. See [LICENSE](./LICENSE) for full details.
