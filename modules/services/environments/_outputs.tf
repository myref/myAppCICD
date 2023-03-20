output "id" {
    description = "Value generated by the back-end to uniquely identify an environment, only one should be filled"
    value = one(local.ids[*])
}