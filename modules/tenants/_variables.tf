variable "name" {
    type    = string
}

variable "tenant" {
    type    = string
}

variable "cloudprovider" {
    type    = string
}

variable "region" {
    type    = string
}

variable "availability_zone" {
    type    = string
}

variable "application" {
    type    = string
}

variable "environment" {
    type    = string
}

variable "compartments" {
    type    = object
}

variable "servers" {
    type    = object
}

variable "conduits" {
    type    = object
}

variable "databases" {
    type    = object
}
