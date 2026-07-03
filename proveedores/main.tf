resource "random_string" "iac_random" {
  length    = 12
  min_upper = 5
}

resource "local_file" "password" {
  filename             = "snaider_password.txt"
  content              = "Password generado para Snaider: ${random_string.iac_random.result}"
  file_permission      = "0400"
  directory_permission = "0600"
}
