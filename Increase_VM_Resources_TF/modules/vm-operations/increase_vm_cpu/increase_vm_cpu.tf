# Retrieve the vCenter password from Vault

data "vault_generic_secret" "vcenter_password" {
  path = var.vault-path
}

data "vsphere_datacenter" "datacenter" {
  name = var.vsphere-dc
}

data "vsphere_compute_cluster" "cluster" {
  name          = var.vsphere-cluster
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "vm" {
  name = var.vm-name
}

resource "vsphere_virtual_machine" "changeVM_CPU" {
  name = var.vm-name
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datacenter_id = data.vsphere_datacenter.datacenter.id
  #power_state = data.vsphere_virtual_machine.vm.config.cpu_hot_add_enabled ? "poweredOn" : "poweredOff" 
  # Increase the CPU resources to 16 vCPUs
  num_cpus = var.vm-cpu-num

}
