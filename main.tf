
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = ">= 6.0.0"

  name = "my-first-terrfaform-vpc"
  cidr = "10.16.0.0/16"

  azs = ["us-east-1a", "us-east-1b", "us-east-1c"]

  #WebTeir
  public_subnets = [
    "10.16.48.0/20",  #sn-web-A
    "10.16.112.0/20", #sn-web-B
    "10.16.176.0/20"  #sn-web-C
  ]

  public_subnet_names = [
    "sn-web-A",
    "sn-web-B",
    "sn-web-C"
  ]

  private_subnets = [
    "10.16.32.0/20",  #sn-app-A
    "10.16.96.0/20",  #sn-app-B
    "10.16.160.0/20", #sn-app-C
    "10.16.0.0/20",   #sn-reserved-A
    "10.16.64.0/20",  #sn-reserved-B
    "10.16.128.0/20", #sn-reserved-C
  ]

  private_subnet_names = [
    "sn-app-A",
    "sn-app-B",
    "sn-app-C",
    "sn-reserved-A",
    "sn-reserved-B",
    "sn-reserved-C",
  ]

  database_subnets = [
    "10.16.16.0/20",  #sn-db-A
    "10.16.80.0/20",  #sn-db-B
    "10.16.144.0/20", #sn-db-C
  ]

  database_subnet_names = [
    "sn-db-A",
    "sn-db-B",
    "sn-db-C"
  ]

  enable_ipv6 = true

  public_subnet_assign_ipv6_address_on_creation   = false
  private_subnet_assign_ipv6_address_on_creation  = false
  database_subnet_assign_ipv6_address_on_creation = false

  public_subnet_enable_dns64   = false
  private_subnet_enable_dns64  = false
  database_subnet_enable_dns64 = false

  private_subnet_ipv6_prefixes  = [2, 6, 10, 0, 4, 8]
  public_subnet_ipv6_prefixes   = [3, 7, 11]
  database_subnet_ipv6_prefixes = [1, 5, 9]

 




}