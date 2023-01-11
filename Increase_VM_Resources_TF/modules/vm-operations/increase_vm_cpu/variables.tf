# vault path for vcenter password

variable "vault-path" {
  description = "Vault path"
  type        = string
  sensitive   = true
  default     = "vcenter/vcenter_pass"
}

# VM Variables  

variable "vm-name" {
  description = "vm name"
  type        = string
  sensitive   = false
}

variable "vsphere-dc" {
  description = "datacenter name"
  type        = string
  sensitive   = false
}

variable "vsphere-cluster" {
  description = "cluster name"
  type        = string
  sensitive   = false
}

variable "vm-cpu-num" {
  description = "vcpu number"
  type        = number
  sensitive   = false
}
