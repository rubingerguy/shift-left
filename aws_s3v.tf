resource "aws_s3_bucket2" "positive2" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

  server_side_encryption_configuration  {
    rule  {
      apply_server_side_encryption_by_default  {
        kms_master_key_id = "some-key"
        sse_algorithm     = "AES256"
      }
    }
  }

  versioning {
    mfa_delete = true
  }
}
MY_AWS_SECRET = "AKIALALEMEL33EEXAMP445"
}
resource "azurerm_resource_group" "positive1" {
  name     = "acceptanceTestResourceGroup1"
  location = "West US"
}

resource "azurerm_sql_server" "positive2" {
  name                         = "mysqlserver1"
  resource_group_name          = "acceptanceTestResourceGroup1"
  location                     = "West US"
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_sql_active_directory_administrator" "positive3" {
  server_name         = "mysqlserver2"
  resource_group_name = "acceptanceTestResourceGroup1"
  login               = "sqladmin"
  tenant_id           = data.azurerm_client_config.current.tenant_id
  object_id           = data.azurerm_client_config.current.object_id
}

resource "aws_s3_bucket2" "positive2" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

  server_side_encryption_configuration  {
    rule  {
      apply_server_side_encryption_by_default  {
        kms_master_key_id = "some-key"
        sse_algorithm     = "AES256"
      }
    }
  }

  versioning {
    mfa_delete = true
  }
}
MY_AWS_SECRET = "AKIALALEMEL33EEXAMP445"
resource "azurerm_resource_group" "positive1" {
  name     = "acceptanceTestResourceGroup1"
  location = "West US"
}

resource azurerm_kubernetes_cluster "k8s_cluster" {
  dns_prefix          = "terragoat-${var.environment}"
  location            = var.location
  name                = "terragoat-aks-${var.environment}"
  resource_group_name = azurerm_resource_group.example.name
  identity {
    type = "SystemAssigned"
  }
  default_node_pool {
    name       = "default"
    vm_size    = "Standard_D2_v2"
    node_count = 2
  }
  addon_profile {
    oms_agent {
      enabled = false
    }
    kube_dashboard {
      enabled = true
    }
  }
  role_based_access_control {
    enabled = false
  }
  tags = {
    git_commit           = "898d5beaec7ffdef6df0d7abecff407362e2a74e"
    git_file             = "terraform/azure/aks.tf"
    git_last_modified_at = "2020-06-17 12:59:55"
    git_last_modified_by = "nimrodkor@gmail.com"
    git_modifiers        = "nimrodkor"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "6103d111-864e-42e5-899c-1864de281fd1"
  }
}
resource "azurerm_storage_account" "security_storage_account" {
  name                      = "securitystorageaccount-${var.environment}${random_integer.rnd_int.result}"
  resource_group_name       = azurerm_resource_group.example.name
  location                  = azurerm_resource_group.example.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  enable_https_traffic_only = true
  tags = {
    git_commit           = "a1d1c1ce31a1bde6dafa188846d90eca82abe5fd"
    git_file             = "terraform/azure/mssql.tf"
    git_last_modified_at = "2022-01-20 05:32:41"
    git_last_modified_by = "28880387+tsmithv11@users.noreply.github.com"
    git_modifiers        = "28880387+tsmithv11"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "4b504d4d-608c-45fe-ae56-807bde6d969f"
  }
}

resource "azurerm_mssql_server" "mssql1" {
  name                         = "terragoat-mssql1-${var.environment}${random_integer.rnd_int.result}"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  tags = {
    git_commit           = "c6f8caa51942284d02465518822685897ad90141"
    git_file             = "terraform/azure/mssql.tf"
    git_last_modified_at = "2022-01-20 18:41:19"
    git_last_modified_by = "28880387+tsmithv11@users.noreply.github.com"
    git_modifiers        = "28880387+tsmithv11"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "54f6cb23-b30a-4f1d-8064-6f777b9b75db"
  }
}

resource "azurerm_mssql_server" "mssql2" {
  name                         = "mssql2-${var.environment}${random_integer.rnd_int.result}"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  tags = {
    git_commit           = "c6f8caa51942284d02465518822685897ad90141"
    git_file             = "terraform/azure/mssql.tf"
    git_last_modified_at = "2022-01-20 18:41:19"
    git_last_modified_by = "28880387+tsmithv11@users.noreply.github.com"
    git_modifiers        = "28880387+tsmithv11"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "096d2cf2-6d47-41b2-9418-cdedea85e184"
  }
}

resource "azurerm_mssql_server" "mssql3" {
  name                         = "mssql3-${var.environment}${random_integer.rnd_int.result}"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  tags = {
    git_commit           = "c6f8caa51942284d02465518822685897ad90141"
    git_file             = "terraform/azure/mssql.tf"
    git_last_modified_at = "2022-01-20 18:41:19"
    git_last_modified_by = "28880387+tsmithv11@users.noreply.github.com"
    git_modifiers        = "28880387+tsmithv11"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "e71d3fb5-addc-481d-ada6-b7432a768de3"
  }
}

resource "azurerm_mssql_server" "mssql4" {
  name                         = "mssql4-${var.environment}${random_integer.rnd_int.result}"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  tags = {
    git_commit           = "c6f8caa51942284d02465518822685897ad90141"
    git_file             = "terraform/azure/mssql.tf"
    git_last_modified_at = "2022-01-20 18:41:19"
    git_last_modified_by = "28880387+tsmithv11@users.noreply.github.com"
    git_modifiers        = "28880387+tsmithv11"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "c3b85724-4f7e-4c63-a17d-3d04239beae8"
  }
}

resource "azurerm_mssql_server" "mssql5" {
  name                         = "mssql5-${var.environment}${random_integer.rnd_int.result}"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  tags = {
    git_commit           = "c6f8caa51942284d02465518822685897ad90141"
    git_file             = "terraform/azure/mssql.tf"
    git_last_modified_at = "2022-01-20 18:41:19"
    git_last_modified_by = "28880387+tsmithv11@users.noreply.github.com"
    git_modifiers        = "28880387+tsmithv11"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "0240ca84-acc9-47d9-b491-9e7e359787a1"
  }
}

resource "azurerm_mssql_server" "mssql6" {
  name                         = "mssql6-${var.environment}${random_integer.rnd_int.result}"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  tags = {
    git_commit           = "c6f8caa51942284d02465518822685897ad90141"
    git_file             = "terraform/azure/mssql.tf"
    git_last_modified_at = "2022-01-20 18:41:19"
    git_last_modified_by = "28880387+tsmithv11@users.noreply.github.com"
    git_modifiers        = "28880387+tsmithv11"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "042d15fb-edfa-484b-b65e-3d70c50cdee7"
  }
}

resource "azurerm_mssql_server" "mssql7" {
  name                         = "mssql7-${var.environment}${random_integer.rnd_int.result}"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  tags = {
    git_commit           = "c6f8caa51942284d02465518822685897ad90141"
    git_file             = "terraform/azure/mssql.tf"
    git_last_modified_at = "2022-01-20 18:41:19"
    git_last_modified_by = "28880387+tsmithv11@users.noreply.github.com"
    git_modifiers        = "28880387+tsmithv11"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "3f1118e1-5067-452e-906f-5123cfc93711"
  }
}

resource "azurerm_mssql_server_security_alert_policy" "alertpolicy1" {
  resource_group_name        = azurerm_resource_group.example.name
  server_name                = azurerm_mssql_server.mssql1.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.security_storage_account.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.security_storage_account.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days  = 20
  email_addresses = ["securityengineer@bridgecrew.io"]
}

resource "azurerm_mssql_server_security_alert_policy" "alertpolicy2" {
  resource_group_name        = azurerm_resource_group.example.name
  server_name                = azurerm_mssql_server.mssql2.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.security_storage_account.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.security_storage_account.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days  = 20
  email_addresses = ["securityengineer@bridgecrew.io"]
}

resource "azurerm_mssql_server_security_alert_policy" "alertpolicy3" {
  resource_group_name        = azurerm_resource_group.example.name
  server_name                = azurerm_mssql_server.mssql3.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.security_storage_account.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.security_storage_account.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days  = 20
  email_addresses = ["securityengineer@bridgecrew.io"]
}

resource "azurerm_mssql_server_security_alert_policy" "alertpolicy4" {
  resource_group_name        = azurerm_resource_group.example.name
  server_name                = azurerm_mssql_server.mssql4.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.security_storage_account.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.security_storage_account.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days  = 20
  email_addresses = ["securityengineer@bridgecrew.io"]
}

resource "azurerm_mssql_server_security_alert_policy" "alertpolicy5" {
  resource_group_name        = azurerm_resource_group.example.name
  server_name                = azurerm_mssql_server.mssql5.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.security_storage_account.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.security_storage_account.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days = 20
}

resource "azurerm_mssql_server_security_alert_policy" "alertpolicy6" {
  resource_group_name        = azurerm_resource_group.example.name
  server_name                = azurerm_mssql_server.mssql6.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.security_storage_account.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.security_storage_account.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days  = 20
  email_addresses = ["securityengineer@bridgecrew.io"]
}

resource "azurerm_mssql_server_security_alert_policy" "alertpolicy7" {
  resource_group_name        = azurerm_resource_group.example.name
  server_name                = azurerm_mssql_server.mssql7.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.security_storage_account.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.security_storage_account.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days  = 20
  email_addresses = ["securityengineer@bridgecrew.io"]
}
