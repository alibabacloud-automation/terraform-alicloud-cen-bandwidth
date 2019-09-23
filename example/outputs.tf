output "instance_id" {
  description = "The ID of the CEN instance"
  value       = module.cen_bandwidth.this_instance_id
}

output "bandwidth_package_id" {
  description = "The ID of the bandwidth package"
  value       = module.cen_bandwidth.this_bandwidth_package_id
}

output "region_ids" {
  description = "List of the two regions to interconnect."
  value       = module.cen_bandwidth.this_region_ids
}

output "bandwidth_limit" {
  description = "The bandwidth configured for the interconnected regions communication."
  value       = module.cen_bandwidth.this_bandwidth_limit
}

