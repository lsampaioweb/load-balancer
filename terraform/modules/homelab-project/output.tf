output "random_target_node_result" {
  value = module.random_target_node
}

output "vms" {
  value       = module.proxmox_vm
  description = "The name of the VM."
}
