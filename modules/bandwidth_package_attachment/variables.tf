variable "attach_bandwidth_package" {
  description = "Whether to attach the CEN bandwidth package to one CEN instance."
  type        = bool
  default     = false
}

variable "instance_id" {
  description = "The ID of the CEN instance."
  type        = string
  default     = ""
}

variable "bandwidth_package_id" {
  description = "The ID of the CEN bandwidth package."
  type        = string
  default     = ""
}