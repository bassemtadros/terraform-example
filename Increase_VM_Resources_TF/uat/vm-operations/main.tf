module "increase_vm_cpu" {
  source = "../../modules/vm-operations/increase_vm_cpu"
  
  vm-name = "linuxtestvm"
  vsphere-dc = "dc"
  vsphere-cluster = "cls.SRV.Linux"
  vm-cpu-num = "16"

}
