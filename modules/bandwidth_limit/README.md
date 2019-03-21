# alicloud_cen_bandwidth_limit

## Input

| Name            | Description                                                  | Type   | Default | Required |
| :-------------- | :----------------------------------------------------------- | ------ | ------- | -------- |
| instance_id     | The ID of the CEN instance.                                  | string | null    | yes      |
| region_ids      | List of the two regions to interconnect.                     | list   | null    | yes      |
| bandwidth_limit | The bandwidth configured for the interconnected regions communication. | int    | null     | yes      |
| set_bandwidth_limit | Whether to set the bandwidth limit.                      | boolean| false   | no       |
~>**Note:** The CEN instance must have child instance in both region of the region_ids specified.

## Output
| Name            | Description                                                  |
| :-------------- | :----------------------------------------------------------- |
| this_instance_id | The ID of the CEN instance.                                 |
| this_region_ids | List of the two regions to interconnect.                     |
| this_bandwidth_limit | The bandwidth configured for the interconnected regions communication. |
