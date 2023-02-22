output "provider_tenant_id" {
    value = module.tenant_onprem.tenant_id
    precondition {
        condition       = module.tenant_onprem.tenant_id !=""
    }
}