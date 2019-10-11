
output "this_name" {
  value = module.bandwidth_package.this_bandwidth_package_name
}

output "this_bandwidth" {
  value = module.bandwidth_package.this_bandwidth
}

output "this_geographic_region_ids" {
  value = module.bandwidth_package.this_geographic_region_ids
}

output "this_charge_type" {
  value = module.bandwidth_package.this_charge_type
}

output "this_period" {
  value = module.bandwidth_package.this_period
}

output "this_instance_id" {
  description = "The ID of the CEN instance"
  value       = module.bandwidth_package_attachment.this_instance_id
}

output "this_bandwidth_package_id" {
  description = "The ID of the bandwidth package"
  value       = module.bandwidth_package.this_bandwidth_package_id
}

output "this_region_ids" {
  description = "List of the two regions to interconnect."
  value       = module.bandwidth_limit.this_region_ids
}

output "this_bandwidth_limit" {
  description = "The bandwidth configured for the interconnected regions communication."
  value       = module.bandwidth_limit.this_bandwidth_limit
}

