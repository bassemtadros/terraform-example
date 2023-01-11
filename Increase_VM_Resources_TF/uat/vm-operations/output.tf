output "vcenter_cred" {
  value = module.increase_vm_cpu.vcenter_password
  description = "The password for logging in to the vcenter from child module"
  sensitive   = true
}
