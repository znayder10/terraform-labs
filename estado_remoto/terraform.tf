terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  # Descomenta este bloque en el paso 2 de la práctica
  # backend "azurerm" {
  #   resource_group_name  = "terralabs-state-rg"
  #   storage_account_name = "terralabsstateremoto01"
  #   container_name       = "tfstate"
  #   key                  = "terraform.tfstate"
  # }
}
