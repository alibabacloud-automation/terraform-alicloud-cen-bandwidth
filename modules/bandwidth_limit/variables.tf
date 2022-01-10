variable "set_bandwidth_limit" {
  description = "Whether to set the bandwidth limit."
  type        = bool
  default     = false
}

variable "instance_id" {
  description = "The ID of the CEN instance."
  type        = string
  default     = ""
}

variable "region_ids" {
  description = "List of the two regions to interconnect."
  type        = list(string)
  default     = []
}

variable "bandwidth_limit" {
  description = "The bandwidth configured for the interconnected regions communication."
  type        = number
  default     = 2
}