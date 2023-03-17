resource "onprem_applications" "application" {
  name                    = var.name
  description             = var.description
  tenant                  = var.name
  status                  = var.status
  centercode              = var.centercode
  change                  = var.change
  view                    = var.view
  responsible             = var.managementR
  accountable             = var.managementA
  inform                  = var.managementI
  developer               = var.developer
}
