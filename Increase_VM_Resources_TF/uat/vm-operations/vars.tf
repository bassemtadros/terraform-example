# Hashicorp Vault Variables

variable "vault-token" {
  description = "Vault token"
  type        = string
  sensitive   = true
}

variable "vault-address" {
  description = "Vault address"
  type        = string
  sensitive   = true
  default      = "https://vmvaultuat.example.com:8200"
}

# vSphere Variables

variable "vsphere-address" {
  description = "vsphere address"
  type        = string
  sensitive   = false
  default     = "vmvcenteruat.example.com"  
}

variable "vsphere-user" {
  description = "vcenter user"
  type        = string
  sensitive   = false
  default     = "vmuseruat"
}
