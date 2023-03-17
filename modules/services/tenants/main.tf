module "tenant_onprem" {
    source               = "../../onprem/tenant_onprem"
    count                = var.prov == "OnPrem" ? 1 : 0
    name                 = var.name
    description          = var.description
    status               = var.status
    centercode           = var.centercode
    change               = var.change
    view                 = var.view
    managementR          = var.managementR
    managementA          = var.managementA
    managementI          = var.managementI
    developer            = var.developer
}
