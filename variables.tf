variable "region" {
  description = "The region used to launch this module resources."
  default     = ""
}

variable "name" {
  description = "Name of the CEN bandwidth package."
}

variable "bandwidth" {
  description = "The bandwidth in Mbps of the bandwidth package."
}

variable "geographic_region_ids" {
  description = "List of the two areas to connect, like [\"China\", \"China\"]."
  type        = list(string)
}

variable "charge_type" {
  description = "The billing method. Valid value: PostPaid, PrePaid."
  default     = "PostPaid"
}

variable "period" {
  description = "The purchase period in month."
  default     = 1
}

variable "new_bandwidth_package" {
  description = "Whether to create a CEN bandwidth package."
  default     = false
}

variable "instance_id" {
  description = "The ID of the CEN instance."
  default     = ""
}

variable "bandwidth_package_id" {
  description = "The ID of the CEN bandwidth package."
  default     = ""
}

variable "attach_bandwidth_package" {
  description = "Whether to attach the CEN bandwidth package to one CEN instance."
  default     = false
}

variable "region_ids" {
  description = "List of the two regions to interconnect."
  type        = list(string)
}

variable "bandwidth_limit" {
  description = " The bandwidth configured for the interconnected regions communication."
}

variable "set_bandwidth_limit" {
  description = "Whether to set the bandwidth limit."
  default     = false
}

