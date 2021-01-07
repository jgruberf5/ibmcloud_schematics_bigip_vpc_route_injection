# F5 Networks BIG-IP™ Virtual Edition Virtul Service and SNAT Route Manager

This directory contains the Terraform module to inject custom VPC routes to be use for BIG-IP™ VPC Gen2 instances virtual services and SNAT pool addresses.

Use this template is a simple manager wrapper for ```ibm_is_vpc_routing_table_route``` to add routes to routing tables. The IPv4 CIDRs contain addresses which, when routed to BIG-IP™ Virtual Edition instances, can be used for virtual service addresses and SNAT pool member addresses. Schematics uses Terraform as the infrastructure-as-code engine.  With this template, you can create and manage infrastructure as a single unit as follows. For more information about how to use this template, see the IBM Cloud [Schematics documentation](https://cloud.ibm.com/docs/schematics).

## IBM Cloud IaaS Support

You're provided free technical support through the IBM Cloud™ community and Stack Overflow, which you can access from the Support Center. The level of support that you select determines the severity that you can assign to support cases and your level of access to the tools available in the Support Center. Choose a Basic, Advanced, or Premium support plan to customize your IBM Cloud™ support experience for your business needs.

Learn more: https://www.ibm.com/cloud/support

## Prerequisites

- Have access to [Gen 2 VPC](https://cloud.ibm.com/vpc-ext/).
- Pre-existing VPC routing table
- IPv4 CIDR to inject
- The gateway address, a BIG-IP™ Virtual Edition Self-IP

**User variable:** ```region```

**Values:**

- ```us-south```
- ```us-east```
- ```eu-gb```
- ```eu-de```
- ```jp-tok```
- ```au-syd```

The IBM VPC Gen2 region to create your BIG-IP™ Virtual Edition instance.

**User variable:** ```management_subnet_id```

The IBM VPC Gen2 subnet associated with the management interface of a BIG-IP™ Virtual Edition instance. This subnet is used to resolve the VPC being used and the zone assoicated with the BIG-IP™ Virtual Edition instance.

**User variable:** ```routing_table_id```

The VPC routing table ID

**User variable:** ```destination_ipv4_cidr```

The IPv4 CIDR to route to the BIG-IP™ Virtual Edition instance.

**User variable:** ```next_hop_ipv4_address```

The IPv4 address of the BIG-IP™ Virtual Edition instance Self-IP to route the IPv4 CIDR.

## Costs

When you apply the template, the infrastructure resources that you create incur charges as follows. To clean up the resources, you can [delete your Schematics workspace or your instance](https://cloud.ibm.com/docs/schematics?topic=schematics-manage-lifecycle#destroy-resources). Removing the workspace or the instance cannot be undone. Make sure that you back up any data that you must keep before you start the deletion process.

*_VPC_: VPC charges are incurred for the infrastructure resources within the VPC, as well as network traffic for internet data transfer. For more information, see [Pricing for VPC](https://cloud.ibm.com/docs/vpc-on-classic?topic=vpc-on-classic-pricing-for-vpc).

## Dependencies

Before you can apply the template in IBM Cloud, complete the following steps.

1.  Ensure that you have the following permissions in IBM Cloud Identity and Access Management:
    * `Manager` service access role for IBM Cloud Schematics
    * `Operator` platform role for VPC Infrastructure
2.  Ensure the following resources exist in your VPC Gen 2 environment
    - VPC
    - SSH Key
    - VPC with multiple subnets
