module "tenant_azure" {
    source               = "../AppCICD/modules/tenant_azure"
    count                = var.prov == "Microsoft" ? 1 : 0
    tenant               = var.name
    location             = var.region
}

module "tenant_onprem" {
    source               = "../AppCICD/modules/tenant_onprem"
    count                = var.prov == "onprem" ? 1 : 0
    name                 = var.name
    party                = var.name
}
