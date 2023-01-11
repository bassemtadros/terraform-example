output "vcenter_password" {
  value = data.vault_generic_secret.vcenter_password.data["password"]
  description = "The password for logging in to the vcenter."
  sensitive   = true
}  
