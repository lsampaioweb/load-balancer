variable "vm_instance" {
  description = "Specific values for this or these virtual machines."
  type = map(object({
    onboot   = optional(bool)
    startup  = optional(string)
    vcpus    = optional(number)
    state    = optional(string)
    priority = optional(number)
  }))
}
