data "ibm_is_subnet" "f5_management_subnet" {
  identifier = var.management_subnet_id
}

resource "ibm_is_vpc_routing_table_route" "injected_snat_routes" {
  name          = "bigip-route-${uuid()}"
  vpc           = data.ibm_is_subnet.f5_management_subnet.vpc
  zone          = data.ibm_is_subnet.f5_management_subnet.zone
  routing_table = var.routing_table_id
  action        = "deliver"
  destination   = var.destination_ipv4_cidr
  next_hop      = var.next_hop_ipv4_address
}