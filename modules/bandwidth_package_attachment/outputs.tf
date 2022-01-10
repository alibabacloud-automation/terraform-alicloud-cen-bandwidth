output "this_instance_id" {
  description = "The ID of the CEN instance"
  value = var.attach_bandwidth_package ? join(
    ",",
    alicloud_cen_bandwidth_package_attachment.this.*.instance_id,
  ) : var.instance_id
}

output "this_bandwidth_package_id" {
  description = "The ID of the CEN bandwidth package."
  value = join(
    ",",
    alicloud_cen_bandwidth_package_attachment.this.*.bandwidth_package_id,
  )
}