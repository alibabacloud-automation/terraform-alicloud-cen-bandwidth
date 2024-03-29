# CEN bandwidth package
module "bandwidth_package" {
  source = "./modules/bandwidth_package"

  new_bandwidth_package = var.new_bandwidth_package

  name                   = var.name
  bandwidth              = var.bandwidth
  geographic_region_a_id = var.geographic_region_a_id != "" ? var.geographic_region_a_id : var.geographic_region_ids[0]
  geographic_region_b_id = var.geographic_region_b_id != "" ? var.geographic_region_b_id : var.geographic_region_ids[1]
  payment_type           = var.payment_type != "" ? var.payment_type : var.charge_type
  period                 = var.period
}

# CEN bandwidth package attachment
module "bandwidth_package_attachment" {
  source = "./modules/bandwidth_package_attachment"

  attach_bandwidth_package = var.attach_bandwidth_package

  instance_id          = var.instance_id
  bandwidth_package_id = var.bandwidth_package_id != "" ? var.bandwidth_package_id : module.bandwidth_package.this_bandwidth_package_id
}

# CEN bandwidth limit
module "bandwidth_limit" {
  source = "./modules/bandwidth_limit"

  set_bandwidth_limit = var.set_bandwidth_limit

  instance_id     = var.instance_id != "" ? var.instance_id : module.bandwidth_package_attachment.this_instance_id
  region_ids      = var.region_ids
  bandwidth_limit = var.bandwidth_limit
}