variable "tenant" {
    type    = string
}
variable "name" {
    type    = string
}
variable "application" {
    type    = string
}
variable "prov" {
    type    = string
}

variable "environment" {
    type    = object ({
        etype               = string, 
        cloudprovider       = string,
        region              = string,
        availability_zone   = string,
        name                = string,
        eversion            = string,
        created             = string,
        updated             = string,
        last_change         = string,
        centercode          = string,
        change              = string,
        view                = string,
        management-r        = string,
        management-a        = string,
        management-i        = string,
        developer           = string
        })              
}

variable "compartments" {
    type = map(object({
            name                = string,
            description         = string,
            ctype               = string,
            vdc                 = string,
            cversion            = string,
            cstatus             = string,
            environment         = string,
            created             = string,
            updated             = string,
            last_change         = string,
            centercode          = string,
            change              = string,
            view                = string,
            management-r        = string,
            management-a        = string,
            management-i        = string,
            developer           = string,
            numofservers        = number,
            addressing           = string
            })            
        )
         
}

variable "servers" {
    type    = map(object({
            name                = string, 
            description         = string,
            compartment         = string,
            size                = string,
            serverrole          = string,
            OS                  = string,
            version             = string,
            created             = string,
            updated             = string,
            last_change         = string,
            Centercode          = string,
            Change              = string,
            View                = string,
            Management-r        = string,
            Management-a        = string,
            Management-i        = string,
            Developer           = string
        })
    )
}

variable "conduits" {
    type    = map(object ({
                name                = string, 
                description         = string,
                f-type              = string,
                source              = map(object ({
                    cloudprovider       = string,
                    region              = string,
                    availability_zone   = string,
                    application         = string,
                    environment         = string,
                    compartment         = string
                })),
                destination          = map(object ({
                    cloudprovider       = string,
                    region              = string,
                    availability_zone   = string,
                    application         = string,
                    environment         = string,
                    compartment         = string
                })),
                version             = string,
                created             = string,
                updated             = string,
                last_change         = string,
                Centercode          = string,
                Change              = string,
                View                = string,
                Management-r        = string,
                Management-a        = string,
                Management-i        = string,
                Developer           = string
        })
    )
}

variable "databases" {
    type    = object ({})
}
