resource "local_file" "numero" {
  filename = "${var.nombre}_numero.txt"
  content  = "Número favorito: ${var.num}"
}

resource "local_file" "persona" {
  filename = var.persona["filename"]
  content  = "Nombre: ${var.nombre}, Rol: ${var.persona["content"]}, Género: ${var.genero[0]}"
}

resource "local_file" "id" {
  filename = "${var.nombre}_id.txt"
  content  = "${var.identificacion} ${var.nombre}"
}
