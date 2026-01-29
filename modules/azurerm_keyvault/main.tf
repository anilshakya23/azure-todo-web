# data "azurerm_key_vault" "kw-data" {
#   for_each            = var.kws
#   name                = each.value.keyvault_name
#   resource_group_name = each.value.resource_group_name
# }

# data "azurerm_key_vault_secret" "secret-user-data" {
#   for_each     = var.kws
#   name         = each.value.secret_user_name
#   key_vault_id = data.azurerm_key_vault.kw-data[each.key].id
# }

# data "azurerm_key_vault_secret" "secret-pw-data" {
#   for_each     = var.kws
#   name         = each.value.secret_pw_name
#   key_vault_id = data.azurerm_key_vault.kw-data[each.key].id
# }


