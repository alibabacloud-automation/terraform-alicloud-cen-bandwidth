variable "instance_id" {
  description = "The ID of the CEN instance."
}

variable "bandwidth_package_id" {
  description = "The ID of the CEN bandwidth package."
}

variable "attach_bandwidth_package" {
  description = "Whether to attach the CEN bandwidth package to one CEN instance."
  default     = false
}
