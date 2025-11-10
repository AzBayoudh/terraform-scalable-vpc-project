# AWS VPC with Terraform

This project creates a scalable Virtual Private Cloud (VPC) on AWS using Terraform.  
It includes public, private, and database subnets across multiple Availability Zones to simulate a production-style setup.

## Overview
The goal of this project was to learn how to structure and utilize Terraform code the right way — clean, modular, and ready for growth.  
I focused on building something reusable that follows best practices for real-world cloud environments.

## Features
- IPv4 and IPv6 addressing enabled  
- Public, private, and database (private) subnet tiers  
- DNS support and hostnames enabled  
- Multi-AZ architecture for high availability, **12 subnets across 3 Availability Zones**, including web, app, database, and buffer/reserved subnets  
- Clean Terraform structure with separate files for providers, variables, and outputs  
- Took a **/16 network and subnetted it into multiple /20 networks** to evenly allocate IP space across all subnets  


## What I Learned
- How to plan and subnet CIDR ranges logically  
- Why Terraform projects should be broken into multiple files  
- How IPv6 /64 subnetting works in AWS  
- How to keep infrastructure code scalable for future projects
- Learned how IPv6 prefix indexes map to subnets so each one gets its own unique /64 range for scalability and clean network design.
- Learned how to map subnets for each tier (web, app, database, and reserved) to specific Availability Zones using index-based mapping in Terraform.


## Next Steps
- Add NAT gateways and routing  
- Automate environment variables (dev, test, prod)
- VPC routing and IGW(Internet Gateway)
- NACL'S
- Security Group implementation for secruity
- NAT Gateways
- Connect EC2 instances to the subnets for a full stack setup  

## Tools
Terraform, AWS (VPC, Subnets, Route Tables, IPv6), Visual Studio Code
