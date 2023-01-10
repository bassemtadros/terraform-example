# Configure the Hashicorp Vault provider
provider "vault" {
  address = "https://vault.example.com"
  token   = var.vault-token
}

# Configure the vCenter provider
provider "vsphere" {
  vcenter_server = "vcenter.example.com"
  user           = "admin"
  password       = data.vault_generic_secret.vcenter_password.value
}
