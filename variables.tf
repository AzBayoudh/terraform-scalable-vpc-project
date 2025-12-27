variable "AWS_Region" {
  description = "The region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "my_ip" {
  description = "My IP address for SSH access"
  type = string
}

