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

