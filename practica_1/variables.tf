variable "location" {
  description = "Región de Azure"
  type        = string
  default     = "Mexico Central"
}

variable "ssh_key_name" {
  description = "Nombre del archivo para la llave SSH local"
  type        = string
}

variable "storage_account_name" {
  description = "Nombre de la cuenta de almacenamiento (único globalmente, solo minúsculas)"
  type        = string
  default     = "terralabssnaider01"
}

variable "container_name" {
  description = "Nombre del contenedor de blobs"
  type        = string
}

variable "estudiante_nombre" {
  description = "Nombre del estudiante para el prefijo de la VNet"
  type        = string
  default     = "Snaider"
}
