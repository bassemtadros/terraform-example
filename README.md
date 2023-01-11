# Virtual Machine CPU Management with Terraform and vSphere

This Terraform code uses the vSphere provider to manage virtual machines in a vSphere environment. The code does the following:

1. Retrieves the vCenter password from Vault using the "vault_generic_secret" data source
2. Retrieves information about a datacenter, compute cluster, and a virtual machine using the "vsphere_datacenter", "vsphere_compute_cluster", and "vsphere_virtual_machine" data sources
3. Edit a vSphere virtual machine resource and configures it with specific parameters such as the name, resource pool ID, datacenter ID, and number of CPUs

# Configuration

- The configuration sets up the Hashicorp Vault and vSphere providers, and also includes a module call to increase_vm_cpu.

- The providers.tf code provider "vault", configures the Hashicorp Vault provider with the address and token of the Vault server. These variables are     passed in and defined in vars.tf where the variables vault-address and vault-token are defined, and sensitive means that this value should not be written to the console/logs.

- The second provider "vsphere", configures the vSphere provider with the vSphere server address, username, and password. The password is being passed from the output of the increase_vm_cpu module and defined in the module "increase_vm_cpu" block of code, which is calling the increase_vm_cpu module from the path "../../modules/vm-operations/increase_vm_cpu", and pass in the module specific variables vm-name, vsphere-dc, vsphere-cluster, and vm-cpu-num.

- The backend.tf sets the local backend, which writes the state file to the local file system and specifies the path for the state file as "./uat.tfstate".

## Variables

The following variables are used in the code and should be defined in a separate `variables.tf` file or passed in as command line arguments:
- `vault-path`: The path to the vCenter password in Vault
- `vsphere-dc`: The name of the vSphere datacenter
- `vsphere-cluster`: The name of the vSphere compute cluster
- `vm-name`: The name of the virtual machine
- `vm-cpu-num`: The number of CPUs to configure for the virtual machine

## Module Variables
- vm-name
- vsphere-dc, 
- vsphere-cluster 
- vm-cpu-num.

## Usage

To use this code, you'll need to have the vSphere provider installed and configured. You'll also need to have access to a vSphere environment and appropriate credentials.

1. Define the variables in a `variables.tf` file or pass them in as command line arguments
2. Change directories to uat/vm-operations
3. Run `terraform init` to initialize the provider
4. Run `terraform apply` to create or update the virtual machine
