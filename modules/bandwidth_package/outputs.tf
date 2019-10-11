output "this_bandwidth_package_id" {
  description = "The ID of the bandwidth package"
  value       = alicloud_cen_bandwidth_package.this[0].id
}

output "this_bandwidth_package_name" {
  value = alicloud_cen_bandwidth_package.this[0].name
}

output "this_bandwidth" {
  value = alicloud_cen_bandwidth_package.this[0].bandwidth
}

output "this_geographic_region_ids" {
  value = alicloud_cen_bandwidth_package.this[0].geographic_region_ids
}

output "this_charge_type" {
  value = alicloud_cen_bandwidth_package.this[0].charge_type
}

output "this_period" {
  value = alicloud_cen_bandwidth_package.this[0].period
}



