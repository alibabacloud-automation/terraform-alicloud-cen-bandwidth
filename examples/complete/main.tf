provider "alicloud" {
  alias  = "bj"
  region = "cn-beijing"
}

provider "alicloud" {
  alias  = "hz"
  region = "cn-hangzhou"
}

resource "alicloud_vpc" "vpc1" {
  provider   = alicloud.bj
  cidr_block = "172.16.0.0/12"
}

resource "alicloud_vpc" "vpc2" {
  provider   = alicloud.hz
  cidr_block = "172.16.0.0/16"
}

resource "alicloud_cen_instance" "default" {
  cen_instance_name = var.name
}

resource "alicloud_cen_instance_attachment" "vpc_attach_1" {
  instance_id              = alicloud_cen_instance.default.id
  child_instance_id        = alicloud_vpc.vpc1.id
  child_instance_type      = "VPC"
  child_instance_region_id = "cn-beijing"
}

resource "alicloud_cen_instance_attachment" "vpc_attach_2" {
  instance_id              = alicloud_cen_instance.default.id
  child_instance_id        = alicloud_vpc.vpc2.id
  child_instance_type      = "VPC"
  child_instance_region_id = "cn-hangzhou"
}

# CEN bandwidth package
module "cen_bandwidth_package" {
  source = "../.."

  #bandwidth_package
  new_bandwidth_package = true

  name                   = var.name
  bandwidth              = 100
  geographic_region_a_id = "China"
  geographic_region_b_id = "China"
  payment_type           = "PostPaid"
  period                 = var.period

  #bandwidth_package_attachment
  attach_bandwidth_package = false

  #bandwidth_limit
  set_bandwidth_limit = false

}

# CEN bandwidth package attachment
module "cen_bandwidth_package_attachment" {
  source = "../.."

  #bandwidth_package
  new_bandwidth_package = false

  #bandwidth_package_attachment
  attach_bandwidth_package = true

  instance_id          = alicloud_cen_instance.default.id
  bandwidth_package_id = module.cen_bandwidth_package.this_bandwidth_package_id

  #bandwidth_limit
  set_bandwidth_limit = false

}

# CEN bandwidth limit
module "cen_bandwidth_limit" {
  source = "../.."

  #bandwidth_package
  new_bandwidth_package = false

  #bandwidth_package_attachment
  attach_bandwidth_package = false

  #bandwidth_limit
  set_bandwidth_limit = true

  instance_id = module.cen_bandwidth_package_attachment.this_instance_id
  region_ids = [
    alicloud_cen_instance_attachment.vpc_attach_1.child_instance_region_id,
    alicloud_cen_instance_attachment.vpc_attach_2.child_instance_region_id
  ]
  bandwidth_limit = var.bandwidth_limit

}