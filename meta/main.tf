resource "local_sensitive_file" "tempfile" {
  for_each = toset(var.users)

  filename = "${each.value}.txt"
  content  = "password: S3cr3tP@ssw0rd_for_${each.value}"
}
