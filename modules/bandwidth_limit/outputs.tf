output "this_instance_id" {
  description = "The ID of the bandwidth package"
  value       = var.instance_id
}

output "this_region_ids" {
  description = "List of the two regions to interconnect."
  value       = var.region_ids
}

output "this_bandwidth_limit" {
  description = "The bandwidth configured for the interconnected regions communication."
  value       = var.bandwidth_limit
}