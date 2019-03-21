resource "alicloud_cen_bandwidth_package" "this" {
  count                 = "${var.new_bandwidth_package ? 1 : 0}"

  name                  = "${var.name}"
  bandwidth             = "${var.bandwidth}"
  geographic_region_ids = "${var.geographic_region_ids}"
  charge_type           = "${var.charge_type}"
  period                = "${var.period}"
}
