variable "location" {
  type = map(string)
  default = {
    "dev"  = "Mexico Central"
    "prod" = "South Central US"
  }
}

variable "vm_size" {
  type = map(string)
  default = {
    "dev"  = "Standard_B1ls"
    "prod" = "Standard_B1s"
  }
}

variable "vnet_cidr" {
  type = map(string)
  default = {
    "dev"  = "10.0.0.0/24"
    "prod" = "10.0.0.0/24"
  }
}

variable "subnet_cidr" {
  type = map(string)
  default = {
    "dev"  = "10.0.0.0/28"
    "prod" = "10.0.0.0/28"
  }
}

variable "tags" {
  type = map(string)
  default = {
    "owner" = "Snaider"
  }
}
