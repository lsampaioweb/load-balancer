module "random_target_node" {
  source  = "lsampaioweb/target-node/random"
  version = "1.0.1"

  for_each = var.vm_instance

  min         = var.random_target_node_min
  max         = var.random_target_node_max
  node_prefix = local.pve_node_prefix
  node_scale  = local.pve_node_scale
}

module "proxmox_vm" {
  source  = "lsampaioweb/vm-qemu/proxmox"
  version = "1.0.1"

  for_each = var.vm_instance

  # General
  target_node = (each.value.target_node != null) ? each.value.target_node : module.random_target_node[each.key].formatted_result

  name = (each.value.name != null) ? each.value.name : join("-",
  [local.environment_sanitized, local.project_sanitized, each.key])

  vmid = each.value.vmid

  description = (each.value.description != null) ? each.value.description : join(" ",
  ["VM created for the project", var.project, each.key])

  bios     = each.value.bios
  onboot   = each.value.onboot
  startup  = each.value.startup
  oncreate = each.value.oncreate
  pool     = (each.value.pool != null) ? each.value.pool : var.environment

  # Clone
  os_type      = each.value.os_type
  clone        = each.value.clone
  full_clone   = each.value.full_clone
  force_create = each.value.force_create

  # OS
  tablet  = each.value.tablet
  boot    = each.value.boot
  agent   = each.value.agent
  qemu_os = each.value.qemu_os
  numa    = each.value.numa
  hotplug = each.value.hotplug
  scsihw  = each.value.scsihw
  tags    = (each.value.tags != null) ? lower(each.value.tags) : each.value.tags
  vga     = each.value.vga

  # CPU
  cpu     = each.value.cpu
  sockets = each.value.sockets
  cores   = each.value.cores
  vcpus   = each.value.vcpus

  # Memory
  memory  = each.value.memory
  balloon = each.value.balloon

  # Hard Disk  
  disks = each.value.disks

  # Networks
  networks = each.value.networks

  # High Availability
  hagroup = each.value.hagroup
  hastate = each.value.hastate
}
