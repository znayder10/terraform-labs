resource "time_static" "time_update" {}

resource "local_file" "time" {
  filename = "snaider_time.txt"
  content  = "Snaider ejecutó esto en la Fecha y Hora: ${time_static.time_update.id}"
}

resource "local_file" "archivo1" {
  filename = "snaider_archivo1.txt"
  content  = "archivo1 creado por Snaider"
}

resource "local_file" "archivo2" {
  filename   = "snaider_archivo2.txt"
  content    = "archivo2 depende del 1"
  depends_on = [local_file.archivo1]
}
