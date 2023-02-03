locals {
  # [0-9A-Za-z_]
  regex = "/(\\W)/"

  # "Load Balancer" -> "load-balancer"
  project_sanitized = lower(replace(var.project, local.regex, "-"))

  # "Staging" -> "staging"
  environment_sanitized = lower(replace(var.environment, local.regex, "-"))

  pve_node_prefix = "kvm"
  pve_node_scale  = "%.2d"
}
