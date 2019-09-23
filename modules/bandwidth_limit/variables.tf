variable "instance_id" {
  description = "The ID of the CEN instance."
}

variable "region_ids" {
  description = "List of the two regions to interconnect."
  type        = list(string)
}

variable "bandwidth_limit" {
  description = "The bandwidth configured for the interconnected regions communication, like [\"cn-beijing\", \"cn-shenzhen\"]."
}

variable "set_bandwidth_limit" {
  description = "Whether to set the bandwidth limit."
  default     = false
}

