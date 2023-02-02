variable "environment" {
  description = "The environment of this project. e.g Staging or Production."
  type        = string

  validation {
    condition     = length(regexall("[^a-zA-Z0-9-]", var.environment)) == 0
    error_message = "The environment name must only contain letters, numbers, and hyphens."
  }
}

variable "environment_short_name" {
  description = "The short name of the environment e.g stg or prd."
  type        = string
}

variable "vm_instance" {
  description = "Specific values for this or these virtual machines."
  type = map(object({
    # VM
    clone   = optional(string)
    onboot  = optional(bool)
    startup = optional(string)
    vcpus   = optional(number)
    networks = optional(map(object({
      bridge   = string
      model    = string
      tag      = optional(number)
      firewall = optional(bool)
      macaddr  = optional(string)
    })))

    # Project
    state    = optional(string)
    priority = optional(number)
  }))
}
