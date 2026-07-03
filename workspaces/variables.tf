variable "location" {
  type = map(string)
  default = {
    "segundo" = "Mexico Central"
    "tercero" = "South Central US"
  }
}

variable "replication" {
  type = map(string)
  default = {
    "segundo" = "LRS"
    "tercero" = "GRS"
  }
}

# ==========================================
# VARIABLES OPCIONALES PARA AWS
# ==========================================
variable "aws_region" {
  type = map(any)
  default = {
    "segundo" = "us-west-1"
    "tercero" = "us-west-2"
  }
}

variable "aws_ami" {
  type = map(any)
  default = {
    "segundo" = "ami-01a694e4a87a9d197" # AMI de Snaider para us-west-1
    "tercero" = "ami-0b614a5d911900a9b" # AMI de Snaider para us-west-2
  }
}
