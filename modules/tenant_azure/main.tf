resource "azurerm_resource_group" "MyTenant" {
  name     = var.rg_name
  location = var.location
}

# id exported