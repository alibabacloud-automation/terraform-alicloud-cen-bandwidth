# Alicloud CEN Bandwidth Terraform Module On Alibaba Cloud terraform-alicloud-cen-bandwidth

Terraform module which creates CEN bandwidth package, attach it to a speacified CEN instance and set the bandwidth limit between two specified regions on Alibaba Cloud.

These types of resources are supported:

- [bandwidth package](https://github.com/terraform-providers/terraform-provider-alicloud/blob/master/website/docs/r/cen_bandwidth_package.html.markdown)
- [bandwidth package attachment](https://github.com/terraform-providers/terraform-provider-alicloud/blob/master/website/docs/r/cen_bandwidth_package_attachment.html.markdown)
- [bandwidth limit](https://github.com/terraform-providers/terraform-provider-alicloud/blob/master/website/docs/r/cen_bandwidth_limit.html.markdown)

## Usage

You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. main.tf

   ```
   module "bandwidth_package" {
     source = "terraform-alicloud-modules/cen-bandwidth/alicloud"
   
     name                          = "bandwidth-package-name"
     bandwidth                     = 5
     geographic_region_ids         = ["China", "China"]
     charge_type                   = "PrePaid"
     new_bandwidth_package         = true
     instance_id                   = "cen-xxx"
     # bandwidth_package_id        = "cenbwp-xxx"
     attach_bandwidth_package      = true
     region_ids                    = ["cn-xxx", "cn-xxx"]
     bandwidth_limit               = 2
     set_bandwidth_limit           = true
   }
   ```

2. Setting `access_key` and `secret_key` values through environment variables:

   - ALICLOUD_ACCESS_KEY
   - ALICLOUD_SECRET_KEY
   - ALICLOUD_REGION

# Input

| Name                  | Description                                                  | Type   | Default                  | Required |
| :-------------------- | :----------------------------------------------------------- | ------ | ------------------------ | -------- |
| name                  | Name of the CEN bandwidth package.                           | string  | null                    | yes      |
| bandwidth             | The bandwidth in Mbps of the bandwidth package.              | int     | null                    | yes      |
| geographic_region_ids | List of the two areas to connect.                            | list    | null                    | yes      |
| charge_type           | The billing method.                                          | string  | null                    | yes      |
| period                | The purchase period in month.                                | string  | 1                       | no       |
| new_bandwidth_package | Whether to create a CEN bandwidth package.                | boolean | false                   | no       |
| instance_id           | The ID of the CEN instance.                                  | string  | null                    | yes      |
| bandwidth_package_id  | The ID of the CEN bandwidth package.                         | string  | null                    | no       |
| attach_bandwidth_package | Whether to attach the CEN bandwidth package to one CEN instance.    | boolean | false         | no       |
| region_ids            | List of the two regions to interconnect.                     | string  | null                    | yes      |
| bandwidth_limit       | The bandwidth configured for the interconnected regions communication. | int     | null          | yes      |
| set_bandwidth_limit   | Whether to set the bandwidth limit.                          | boolean | false                   | no       |
~>**Note:** If set charge_type to PrePaid, the bandwidth package can't be deleted before expired time and will deduct fees from your account directly. And If set to PostPaid, the period parameter will be ignored.

~>**Note:** If set charge_type to PrePaid, the bandwidth should not be less than 3 Mbps. If charge_type to PostPaid, the bandwidth should not be less than 2Mbps.

~>**Note:** If set bandwidth_package_id with new_bandwidth_package true, the bandwidth_package_attachment module will use the bandwidth_package_id you specified. Otherwise, the bandwidth_package_id created by module bandwidth_package will be used.
## Output

| Name                      | Description                     |
| ------------------------- | ------------------------------- |
| this_instance_id          | The ID of CEN instance          |
| this_bandwidth_package_id | The ID of the bandwidth package |
| this_region_ids | List of the two regions to interconnect.                     |
| this_bandwidth_limit | The bandwidth configured for the interconnected regions communication. |
