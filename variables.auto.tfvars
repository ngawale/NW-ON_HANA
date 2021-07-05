/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: MIT-0
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this
 * software and associated documentation files (the "Software"), to deal in the Software
 * without restriction, including without limitation the rights to use, copy, modify,
 * merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 * INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 * OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

# Generic variables
aws_region = "us-east-1"
enabled    = true

#Tags and Naming
application_code = "app"
application_name =  "HBX"
subproject = "SAP"
environment_type = "SBX"


#Networking
vpc_id                 = "vpc-09d8e8dcbb4ce82ec"
subnet_ids             = ["subnet-07fd17dfced044299", "subnet-0bd761f8b3e615f30"]
dns_zone_name          = "gawale.com"
customer_default_sg_id = "sg-0ea8a53b40cdd743e"
#vpc_security_group_ids= "sg-0ea8a53b40cdd743e"
# Operation System
ami_id  = "ami-0b870ceb7afb7a02c"
ssh_key = "terraform"

# Security
kms_key_arn           = "arn:aws:kms:us-east-1:486529790556:key/23ba7a36-c486-4846-ba3a-c2f3312e4c83"
default_instance_role = false
iam_instance_role = "ASCSClusterRole"
# SAP parameters
sid               = "HBX"
high_availability = false


# HANA Database Parameters
hana_is_scale_out               = false
hana_instance_type              = "r5.8xlarge"
#root_volume_size                = <defaulted_to_50>
hana_disks_data_storage_type    = "gp2"
hana_disks_logs_storage_type    = "gp2"
hana_disks_backup_storage_type  = "st1"
hana_disks_shared_storage_type  = "gp2"
#hana_disks_shared_size          = <defaulted_to_512>
hana_disks_usr_sap_storage_type = "gp2"
#hana_disks_usr_sap_storage_size = <defaulted_to_50>
customer_cidr_blocks= ["10.0.0.0/8","172.16.0.0/12"]
# Netweaver Application Servers Parameters
ascs_instance_type          = "r5.large"
as_instance_type            = "r5.large"
as_instance_count           = 2
efs_sapmnt                  = true
#ascs_root_volume_size       = <defaulted_to_50>
#app_server_root_volume_size = <defaulted_to_50>