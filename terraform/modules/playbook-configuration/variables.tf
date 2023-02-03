variable "path_playbook_scripts" {
  description = "The path where the ansible playbooks are stored."
  type        = string
  default     = "../ansible"
}

variable "path_inventory" {
  description = "The path where the ansible inventory file is stored."
  type        = string
  default     = "../ansible/inventory/hosts"
}

variable "path_inventory_template" {
  description = "The path where the ansible inventory template file is stored."
  type        = string
  default     = "../ansible/inventory/hosts.tpl"
}

variable "directory_permission" {
  description = "The permission on the created directory."
  type        = string
  default     = "0644"
}

variable "file_permission" {
  description = "The permission on the created file."
  type        = string
  default     = "0644"
}

variable "hosts_list" {
  description = "The list of hosts (virtual machines)."
  type        = list(map(any))
  default     = [{}]
}

variable "playbook_provision" {
  description = "Name of the playbook that will be executed during the provision of the VM."
  type        = string
  default     = "provision.yml"
}

# variable "playbook_destroy" {
#   description = "Name of the playbook that will be executed during the destruction of the VM."
#   type        = string
#   default     = "destroy.yml"
# }
