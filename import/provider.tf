provider "azurerm" {
  features {}
}

# Provider opcional para AWS (usar si importas recursos de Amazon)
provider "aws" {
  region = "us-west-1" # Región de Snaider
}
