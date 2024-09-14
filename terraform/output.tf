output "virtual_machines" {
  value = module.homelab_project.vms
}

output "app_urls" {
  description = "URLs of the application for each VM, including the base URL"
  value = concat(
    ["https://loadbalancer.lan.homelab"], # Fixed base URL
    [
      for key in keys(module.homelab_project.vms) :
      format("https://loadbalancer-%s.lan.homelab", key)
    ]
  )
}
