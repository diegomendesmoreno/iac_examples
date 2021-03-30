# Variables

variable "admin_username" {
  description = "SSH user"
}

variable "admin_password" {
  description = "SSH user password"
}

variable "location" {
  description = "Location Azure"
}

variable "prefix" {
  type    = string
  default = "my"
}

# Tag for resource group
variable "tags" {
  default = {
    Environment = "Terraform GS"
  }
}
