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
