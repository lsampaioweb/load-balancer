output "virtual_machines" {
  value = module.homelab_project.vms
}

output "app_urls" {
  description = "URLs of the application for each VM, including the base URL"
  value = concat(
    [
      # Use conditional expression to prepend "edge-" only for Staging.
      format(
        "https://%sloadbalancer.lan.homelab",
        var.environment == "Staging" ? "edge-" : ""
      )
    ],
    [
      for key in keys(module.homelab_project.vms) :
      format(
        "https://%sloadbalancer-%s.lan.homelab",
        var.environment == "Staging" ? "edge-" : "",
        key
      )
    ]
  )
}
