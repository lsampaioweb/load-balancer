output "virtual_machines" {
  value = module.proxmox_vm
}

output "app_url" {
  description = "URL of the application"
  value       = ["https://loadbalancer.homelab", "https://loadbalancer-01.homelab", "https://loadbalancer-02.homelab"]
}
