output "this_instance_id" {
  value = "${var.attach_bandwidth_package ? join(",", alicloud_cen_bandwidth_package_attachment.this.*.instance_id) : var.instance_id}"
}

output "this_bandwidth_package_id" {
  value = "${join(",", alicloud_cen_bandwidth_package_attachment.this.*.bandwidth_package_id)}"
}
