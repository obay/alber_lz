module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "6.2.0"

  default_location = var.default_location

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm
  }

  root_parent_id = data.azurerm_client_config.core.tenant_id
  root_id        = var.root_id
  root_name      = var.root_name

  #To deploy the management resources settings.
  # deploy_management_resources    = var.deploy_management_resources
  # subscription_id_management     = var.subscription_id_management
  # configure_management_resources = local.configure_management_resources

  # # To deploy the identity resources settings.
  # deploy_identity_resources    = var.deploy_identity_resources
  # subscription_id_identity     = var.subscription_id_identity
  # configure_identity_resources = local.configure_identity_resources

  # # To deploy the connectivity resources settings.
  # deploy_connectivity_resources    = var.deploy_connectivity_resources
  # subscription_id_connectivity     = var.subscription_id_connectivity
  # configure_connectivity_resources = local.configure_connectivity_resources
}
