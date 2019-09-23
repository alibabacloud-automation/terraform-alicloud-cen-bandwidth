resource "alicloud_cen_bandwidth_limit" "this" {
  count = var.set_bandwidth_limit ? 1 : 0

  instance_id     = var.instance_id
  region_ids      = var.region_ids
  bandwidth_limit = var.bandwidth_limit
}

