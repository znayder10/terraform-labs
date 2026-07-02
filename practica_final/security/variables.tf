variable "rg_name" {
  description = "Nombre del Resource Group"
  type        = string
}

variable "res_location" {
  description = "Región de Azure"
  type        = string
}

variable "tags" {
  description = "Tags para los recursos"
  type        = map(string)
}
