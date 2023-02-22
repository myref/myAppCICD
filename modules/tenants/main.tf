module "tenant_azure" {
    source               = "../tenant_azure"
    count                = var.cloudprovider == "Microsoft" ? 1 : 0
    rg_name              = var.resource_group_name
    region               = var.region
}

module "tenant_onprem" {
    source               = "../tenant_onprem"
    count                = var.cloudprovider == "onprem" ? 1 : 0
    tenant               = var.tenant
    region               = var.region
}
