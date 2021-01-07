#!/bin/bash
rm ibmcloud_schematics_bigip_vpc_route_injection.zip
zip -r ibmcloud_schematics_bigip_vpc_route_injection.zip . -x '*.git*'
