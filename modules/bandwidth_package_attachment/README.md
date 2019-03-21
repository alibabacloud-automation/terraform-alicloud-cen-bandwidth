# alicloud_cen_bandwidth_package_attachment

## Input

| Name                 | Description                          | Type   | Default | Required |
| :------------------- | :----------------------------------- | ------ | ------- | -------- |
| instance_id          | The ID of the CEN instance.          | string | null    | yes      |
| bandwidth_package_id | The ID of the CEN bandwidth package. | string | null    | yes      |
| attach_bandwidth_package | Whether to attach the CEN bandwidth package to one CEN instance. | boolean | false | no |

## Output

| Name                 | Description                          |
| -------------------- | ------------------------------------ |
| this_instance_id          | The ID of the CEN instance.          |
| this_bandwidth_package_id | The ID of the CEN bandwidth package. |
