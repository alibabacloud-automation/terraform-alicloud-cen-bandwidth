resource "alicloud_cen_bandwidth_package_attachment" "this" {
  count = var.attach_bandwidth_package ? 1 : 0

  instance_id          = var.instance_id == "" ? alicloud_cen_instance.default.id : var.instance_id
  bandwidth_package_id = var.bandwidth_package_id
}

provider "alicloud" {
  alias  = "fra"
  region = var.region_ids[0]
}

provider "alicloud" {
  alias  = "sh"
  region = var.region_ids[1]
}

resource "alicloud_vpc" "fra" {
  provider   = alicloud.fra
  cidr_block = "192.168.0.0/16"
}

resource "alicloud_vpc" "sh" {
  provider   = alicloud.sh
  cidr_block = "172.16.0.0/12"
}

resource "alicloud_cen_instance" "default" {
  name        = var.name
  description = "tf-testAccCenBandwidthLimitConfigDescription"
}

resource "alicloud_cen_instance_attachment" "default" {
  instance_id              = alicloud_cen_instance.default.id
  child_instance_id        = alicloud_vpc.fra.id
  child_instance_region_id = "eu-central-1"
}

resource "alicloud_cen_instance_attachment" "default1" {
  instance_id              = alicloud_cen_instance.default.id
  child_instance_id        = alicloud_vpc.sh.id
  child_instance_region_id = "cn-shanghai"
}