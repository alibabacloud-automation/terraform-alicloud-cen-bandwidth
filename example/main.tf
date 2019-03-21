module "cen_bandwidth" {
  source = "../"
  name                          = "bandwidth-package-name"
  bandwidth                     = 5
  geographic_region_ids         = ["China", "China"]
  charge_type                   = "PrePaid"
  new_bandwidth_package         = true
  instance_id                   = "cen-xxx"
  # bandwidth_package_id        = "cenbwp-xxx"
  attach_bandwidth_package      = true
  region_ids                    = ["cn-xxx", "cn-xxx"]
  bandwidth_limit               = 2
  set_bandwidth_limit           = true
}
