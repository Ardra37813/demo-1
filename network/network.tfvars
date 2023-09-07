# * Project id of the project that holds the network
project_id = "empc-dev-1-8nyy"

# * Name of the VPC network 
network_name= "network1"

# List of firewall rules
firewall_rules=[{
    name                    = "allow-ssh-ingress"
    description             = "allow-ssh-ingress"
    direction               = "INGRESS"
    priority                = null
    ranges                  = ["0.0.0.0/0"]
    source_tags             = null
    source_service_accounts = null
    target_tags             = null
    target_service_accounts = null
    allow = [{
      protocol = "tcp"
      ports    = ["22"]
    }]
    deny       = []
    log_config = null
    ## To enable firewall logs comment line:109 and uncomment line:111-113
    # log_config = {
    #   metadata = "INCLUDE_ALL_METADATA"
    # }
  }]

# List of routes being created in this VPC
routes=[{
      name              = "egress-internet"
      description       = "route through IGW to access internet"
      destination_range = "0.0.0.0/0"
      next_hop_internet = "true"
    }]

# Secondary ranges that will be used in some of the subnets
secondary_ranges={
    subnet-01 = [{
                range_name    = "subnet-01-secondary-01"
                ip_cidr_range = "192.168.64.0/28"
            }]
  }

# * The list of subnets being created
subnets=[{
      subnet_name      = "subnet-01"
      subnet_ip        = "10.1.0.0/28"
      subnet_region    = "us-west1"
      subnet_flow_logs = "true"
    }]

# The network routing mode
routing_mode="GLOBAL"

# An optional description of this resource. The resource must be recreated to modify this field
description="First VPC network"

# If set, ensure that all routes within the network specified whose names begin with 'default-route' and with a next hop of 'default-internet-gateway' are deleted
delete_default_internet_gateway_routes=false

# The network MTU (If set to 0, meaning MTU is unset - defaults to '1460'). Recommended values: 1460 (default for historic reasons), 1500 (Internet default), or 8896 (for Jumbo packets). Allowed are all values in the range 1300 to 8896, inclusively
mtu=1460


