variable "nombre" {
  type    = string
  default = "Snaider"
}

variable "num" {
  type    = number
  default = 42
}

variable "persona" {
  type = map(any)
  default = {
    filename = "snaider_persona.txt"
    content  = "Ingeniero Cloud"
  }
}

variable "genero" {
  type    = list(string)
  default = ["M", "F", "N/A"]
}

variable "identificacion" {
  type    = string
  default = "ID-998877"
}
