variable "vm_object" {
  type = map(object({
    name  = string
    vcpus = optional(number)
  }))
  default = {
    "manager" = {
      name  = "manager-01"
      vcpus = 3
    },
    "worker" = {
      name  = "worker-01"
      vcpus = 3
    }
  }
}

resource "random_integer" "target_node" {
  min = 1
  max = 7
  for_each    = var.vm_object
}

module "proxmox-ubuntu-22-04" {
  source = "../modules/proxmox-ubuntu-22-04"
  clone  = "ubuntu-22-04-server-standard"

  for_each    = var.vm_object
  
  target_node = "kvm-0${random_integer.target_node[each.key].result}"
  name        = "load-balancer-${each.value.name}"
  vcpus       = each.value.vcpus

  description = "Traefik VM as Load Balancer."
  pool        = ""
}
