locals {
  filename = "snaider_test.txt"
}

module "file-module" {
  source = "./file-module"

  in-filename   = local.filename
  in-content    = "Este es el archivo #1 generado por el módulo de Snaider"
  in-permission = "0400"
}

module "file-module-dos" {
  source = "./file-module"

  in-filename   = "snaider_test2.txt"
  in-content    = "Este es el archivo #2 generado por el módulo de Snaider"
  in-permission = "0600"
}
