terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "~> 1.48.0"
    }
  }
}

provider "openstack" {
  user_name = "admin"
  tenant_name = "admin"
  password = "tirzok@123"
  auth_url = "http://192.168.122.10/identity"
  region = "RegionOne"
  user_domain_name = "Default"
  project_domain_name = "Default" 

}

resource "openstack_compute_instance_v2" "demo_instance" {
  name = "demo-instance"
  image_id = "21046c0f-e924-4a18-89e1-0bbe8cd3ca6e"
  flavor_name = "cirros256"
  key_pair = "my-key"
  security_groups = ["default"]
  count = 1

  network {
    uuid = "c3b7dc21-4ddf-4f29-bec1-67a2fabfc696"
    name = "shared"

  }

}
