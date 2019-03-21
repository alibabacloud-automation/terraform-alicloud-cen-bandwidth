resource "alicloud_cen_bandwidth_package_attachment" "this" {
  count                = "${var.attach_bandwidth_package ? 1 : 0}"

  instance_id          = "${var.instance_id}"
  bandwidth_package_id = "${var.bandwidth_package_id}"
}
