variable "geographic_region_ids" {
  description = "(Deprecated from version 1.3.0) List of the two areas to connect, like [\"China\", \"China\"].Use geographic_region_a_id and geographic_region_b_id instead."
  type        = list(string)
  default     = []
}

variable "charge_type" {
  description = "(Deprecated from version 1.3.0) The billing method. Valid value: PostPaid, PrePaid.Use payment_type instead."
  type        = string
  default     = "PostPaid"
}

variable "new_bandwidth_package" {
  description = "Whether to create a CEN bandwidth package."
  type        = bool
  default     = false
}

variable "name" {
  description = "Name of the CEN bandwidth package."
  type        = string
  default     = ""
}

variable "bandwidth" {
  description = "The bandwidth in Mbps of the bandwidth package."
  type        = number
  default     = 100
}

variable "geographic_region_a_id" {
  description = "The area A to which the network instance belongs."
  type        = string
  default     = "China"
}

variable "geographic_region_b_id" {
  description = "The area B to which the network instance belongs."
  type        = string
  default     = "China"
}

variable "payment_type" {
  description = "The billing method. Valid value: PostPaid | PrePaid. Default to PostPaid. If set to PrePaid, the bandwidth package can't be deleted before expired time."
  type        = string
  default     = "PostPaid"
}

variable "period" {
  description = "The purchase period in month."
  type        = number
  default     = 1
}