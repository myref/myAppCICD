variable "tenant" {
    type    = string
}

variable "location" {
    type    = string
}

variable "resource_group_name" {
    type    = string
    description = "The Azure resource group linked to the subscription and set in an environment variable"
    validation {
        condition = substr(var.resource_group_name, 0, 5) == "pers-"
        error_message = "The resource_group_name value must be a valid Azure resource group linked to your subscription, starting with \"pers-\"."
    }
}