##################################################################################
# region - The VPC region to instantiate the F5 BIG-IP instance
##################################################################################
variable "region" {
  type        = string
  default     = "us-south"
  description = "The VPC region to instantiate the F5 BIG-IP instance"
}
# Present for CLI testng
#variable "api_key" {
#  type        = string
#  default     = "G6KI2sTEj6BxvCiUkc5SfTKOjy2oDoFHj-r-FkGg73b8"
#  description = "IBM Public Cloud API KEY"
#}

##################################################################################
# management_subnet_id - The VPC subnet ID for the F5 BIG-IP management interface
##################################################################################
variable "management_subnet_id" {
  type        = string
  default     = null
  description = "Required VPC Gen2 subnet ID for the F5 BIG-IP management network"
}

##################################################################################
# routing_table_id - The routing table id to inject the route
##################################################################################
variable "routing_table_id" {
  type        = string
  default     = ""
  description = "The VPC routing table ID to injecct the route"
}

##################################################################################
# destination_ipv4_cidr - The destination IPv4 CIDR for this route
##################################################################################
variable "destination_ipv4_cidr" {
  type        = string
  default     = ""
  description = "The destination IPv4 CIDR for this route"
}

##################################################################################
# next_hop_ipv4_address - The next hop (gateway) IPv4 address for this route
##################################################################################
variable "next_hop_ipv4_address" {
  type        = string
  default     = ""
  description = "The next hop (gateway) IPv4 address for this route"
}