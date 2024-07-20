output "virtual_machines" {
  value = module.homelab_project.vms
}

output "app_url" {
  description = "URL of the application"
  value       = ["https://loadbalancer.lan.homelab", "https://loadbalancer-01.lan.homelab", "https://loadbalancer-02.lan.homelab"]
}
