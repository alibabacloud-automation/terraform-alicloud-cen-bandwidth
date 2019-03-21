output "this_bandwidth_package_id" {
  description = "The ID of the bandwidth package"
  value       = "${join(",", alicloud_cen_bandwidth_package.this.*.id)}"
}
