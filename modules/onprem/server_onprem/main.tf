resource "onprem_servers" "server" {
  name                    = var.name
  description             = var.description
  compartment             = var.compartment
  size                    = var.size
  serverrole              = var.serverrole
  image                   = var.image
  sversion                = var.sversion
  sstatus                 = var.sstatus
  centercode              = var.centercode
  change                  = var.change
  view                    = var.view
  responsible             = var.managementR
  accountable             = var.managementA
  inform                  = var.managementI
  developer               = var.developer
}
