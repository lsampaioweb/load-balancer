variable "vm_object" {
  type = map(object({
    vm_type = optional(string)
    onboot  = optional(bool)
    vcpus   = optional(number)
  }))
  default = {
    "01" = {
      vm_type = "master"
      onboot  = true
      vcpus   = 3
    },
    "02" = {
      vm_type = "backup"
      onboot  = true
      vcpus   = 3
    }
  }
}

resource "random_integer" "target_node" {
  for_each = var.vm_object

  min      = 1
  max      = 7
}

module "proxmox-ubuntu-22-04" {
  for_each = var.vm_object

  source = "../modules/proxmox-ubuntu-22-04"
  clone  = "ubuntu-22-04-server-std-docker"

  target_node = "kvm-0${random_integer.target_node[each.key].result}"
  name        = "stg-load-balancer-${each.key}"
  onboot      = each.value.onboot
  vcpus       = each.value.vcpus

  description = "Traefik VM as Load Balancer."
  pool        = "Stagging"
}

resource "local_file" "ansible_hosts" {
  for_each = var.vm_object

  content = templatefile("../../ansible/extra_vars.tpl",
    {
      vm_type     = each.value.vm_type
      hostname    = module.proxmox-ubuntu-22-04[each.key].vm_name
      public_ip   = module.proxmox-ubuntu-22-04[each.key].vm_ipv4
      password_id = module.proxmox-ubuntu-22-04[each.key].vm_cloned_from
    }
  )
  filename = "../../ansible/${each.key}.json"
}
