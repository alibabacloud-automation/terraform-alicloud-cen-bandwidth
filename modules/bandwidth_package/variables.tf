variable "name" {
  description = "Name of the CEN bandwidth package."
}

variable "bandwidth" {
  description = "The bandwidth in Mbps of the bandwidth package."
}

variable "geographic_region_ids" {
  description = "List of the two areas to connect, like [\"China\", \"China\"]."
  type        = "list"
}

variable "charge_type" {
  description = "The billing method. Valid value: PostPaid, PrePaid."
}

variable "period" {
  description = "The purchase period in month."
  default     = 1
}

variable "new_bandwidth_package" {
  description = "Whether to create a CEN bandwidth package."
  default     = false
}
