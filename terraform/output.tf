output "virtual_machines" {
  value = module.homelab_project.vms
}

output "app_url" {
  description = "URL of the application"
  value       = ["https://loadbalancer.homelab", "https://loadbalancer-01.homelab", "https://loadbalancer-02.homelab"]
}
