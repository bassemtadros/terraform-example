# Configure the Hashicorp Vault provider
provider "vault" {
  address = var.vault-address
  token   = var.vault-token
}

# Configure the vCenter provider
provider "vsphere" {
  vsphere_server = var.vsphere-address
  user           = var.vsphere-user
  password       = module.increase_vm_cpu.vcenter_password
}
