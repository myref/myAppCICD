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

module "environments" {
    source               = "./modules/services/environments"
    prov                 = var.environment.cloudprovider
    name                 = var.tenant
    description          = var.tenant
    etype                = var.environment.etype
    cloudprovider        = var.environment.cloudprovider
    region               = var.environment.region
    az                   = var.environment.availability_zone
    application          = var.application
    eversion            = var.environment.eversion
    estatus             = "Operational"
    centercode           = var.environment.centercode
    change               = var.environment.change
    view                 = var.environment.view
    managementR          = var.environment.management-r
    managementA          = var.environment.management-a
    managementI          = var.environment.management-i
    developer            = var.environment.developer
}

