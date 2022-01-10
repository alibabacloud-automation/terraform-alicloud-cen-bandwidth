resource "alicloud_cen_bandwidth_package" "this" {
  count = var.new_bandwidth_package ? 1 : 0

  cen_bandwidth_package_name = var.name
  bandwidth                  = var.bandwidth
  geographic_region_a_id     = var.geographic_region_a_id != "" ? var.geographic_region_a_id : var.geographic_region_ids[0]
  geographic_region_b_id     = var.geographic_region_b_id != "" ? var.geographic_region_b_id : var.geographic_region_ids[1]
  payment_type               = var.payment_type != "" ? var.payment_type : var.charge_type
  period                     = var.period
}