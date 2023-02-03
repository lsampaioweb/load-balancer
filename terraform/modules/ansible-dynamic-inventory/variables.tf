variable "path_playbook_scripts" {
  description = ""
  type        = string
  default     = "../ansible"
}

variable "path_inventory" {
  description = ""
  type        = string
  default     = "../ansible/inventory/hosts"
}

variable "path_inventory_template" {
  description = ""
  type        = string
  default     = "../ansible/inventory/hosts.tpl"
}

variable "directory_permission" {
  description = ""
  type        = string
  default     = "0644"
}

variable "file_permission" {
  description = ""
  type        = string
  default     = "0644"
}

variable "hosts_list" {
  description = "sdsd"
  type        = list(map(any))
  default     = [{}]
}

variable "playbook_provision" {
  description = ""
  type        = string
  default     = "provision.yml"
}

# variable "playbook_destroy" {
#   description = ""
#   type        = string
#   default     = "destroy.yml"
# }
