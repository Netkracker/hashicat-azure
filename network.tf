module "network" {
  source              = "app.terraform.io/ACME-inc98/network/azurerm"
  resource_group_name = azurerm_resource_group.network.name
  }

  tags = {
    Environment = "dev"
    Billable  = "yes"
  }

  depends_on = [azurerm_resource_group.network]
}
