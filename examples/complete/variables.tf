#bandwidth_package
variable "name" {
  description = "Name of the CEN bandwidth package."
  type        = string
  default     = "tf-cen-bandwidth"
}

variable "period" {
  description = "The purchase period in month."
  type        = number
  default     = 1
}

#bandwidth_limit
variable "bandwidth_limit" {
  description = "The bandwidth configured for the interconnected regions communication."
  type        = number
  default     = 2
}