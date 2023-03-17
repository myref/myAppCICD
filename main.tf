module "tenants" {
    source               = "./modules/services/tenants"
    prov                 = var.environment.cloudprovider
    name                 = var.tenant
    description          = var.tenant
    status               = "Operational"
    centercode           = var.environment.centercode
    change               = var.environment.change
    view                 = var.environment.view
    managementR          = var.environment.management-r
    managementA          = var.environment.management-a
    managementI          = var.environment.management-i
    developer            = var.environment.developer
}

module "applications" {
    source               = "./modules/services/applications"
    prov                 = var.environment.cloudprovider
    name                 = var.tenant
    description          = var.tenant
    tenant               = var.tenant
    status               = "Operational"
    centercode           = var.environment.centercode
    change               = var.environment.change
    view                 = var.environment.view
    managementR          = var.environment.management-r
    managementA          = var.environment.management-a
    managementI          = var.environment.management-i
    developer            = var.environment.developer
}

