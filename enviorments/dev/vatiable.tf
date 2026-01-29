variable "rgs" {
  type = map(object({
    rg_name  = string
    location = string
  }))

}

variable "pips" {
  type = map(object({
    pip_name            = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))

}

variable "networks" {
  type = map(object({
    vnet_name           = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    subnets = map(object({
      subnet_name      = string
      address_prefixes = list(string)
    }))
  }))
}

# variable "kws" {
#   type = map(object({
#     keyvault_name       = string
#     resource_group_name = string
#     secret_user_name    = string
#     secret_pw_name      = string
#   }))
# }
variable "vms" {
  type = map(object({
    nic_name             = string
    location             = string
    resource_group_name  = string
    vm_name              = string
    size                 = string
    admin_username       = string
    admin_password       = string
    subnet-vm-data       = string
    pip-vm-data          = string
    virtual_network_name = string
    source_image_reference = object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    })
  }))

}

variable "admin_user_frontend" {
  type      = string
  sensitive = true
}

variable "admin_password_frontend" {
  type      = string
  sensitive = true
}

variable "admin_user_backend" {
  type      = string
  sensitive = true
}

variable "admin_password_backend" {
  type      = string
  sensitive = true
}
