resource "local_file" "archivo" {
  filename        = var.filename
  file_permission = "0777"
  content         = "Contenido alternativo de Snaider"
  lifecycle {
    prevent_destroy = false
    ignore_changes  = [content]
  }
}
