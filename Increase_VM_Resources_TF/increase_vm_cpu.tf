# Retrieve the vCenter password from Vault
data "vault_generic_secret" "vcenter_password" {
  path = "secret/vcenter"
  key  = "password"
}

# Increase the CPU count of the VM
resource "vsphere_virtual_machine" "vm" {
  name = "vm1"
  resource_pool_id = "/DC1/host/DC1_H01/Resources"
  datacenter_id = "/DC1"
  
  # Increase the CPU resources to 16 vCPUs
  num_cpus = 16

  # Specify the other VM settings as needed
  memory = 4096
}
