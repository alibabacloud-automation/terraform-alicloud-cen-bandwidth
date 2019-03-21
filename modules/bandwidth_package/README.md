# alicloud_cen_bandwidth_package

## Input

| Name                  | Description                                     | Type   | Default                  | Required |
| :-------------------- | :---------------------------------------------- | ------ | ------------------------ | -------- |
| name                  | The name of the CEN bandwidth package.          | string | null                     | yes      |
| bandwidth             | The bandwidth in Mbps of the bandwidth package. | int    | null                     | yes      |
| geographic_region_ids | List of the two areas to connect.               | list   | null                     | yes      |
| charge_type           | The billing method. Valid value: PostPaid, PrePaid. | string | null                 | yes      |
| period                | The purchase period in month.                   | int    | 1                        | no       |
| new_bandwidth_package | Whether to create a CEN bandwidth package.      | boolean| false                    | no       |

~>**Note:** If set charge_type to PrePaid, the bandwidth package can't be deleted before expired time and will deduct fees from your account directly. And If set to PostPaid, the period parameter will be ignored.

~>**Note:** If set charge_type to PrePaid, the bandwidth should not be less than 3 Mbps. If charge_type to PostPaid, the bandwidth should not be less than 2Mbps.

## Output

| Name                 | Description                     |
| -------------------- | ------------------------------- |
| this_bandwidth_package_id | The ID of the bandwidth package |
