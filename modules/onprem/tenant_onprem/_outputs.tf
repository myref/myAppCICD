output "id" {
    description = "Value generated by the back-end to uniquely identify a tenant"
    value = onprem_tenants.tenant.id
}
