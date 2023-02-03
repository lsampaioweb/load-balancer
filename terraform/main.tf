module "homelab_project" {
  source = "./modules/homelab-project"

  project     = var.project
  environment = var.environment

  vm_instance = var.vm_instance
}

module "playbook_configuration" {
  source = "./modules/playbook-configuration"

  hosts_list = [
    for key, value in var.vm_instance :
    {
      hostname    = module.homelab_project.vms[key].vm_name
      public_ip   = module.homelab_project.vms[key].vm_ipv4
      password_id = module.homelab_project.vms[key].vm_cloned_from

      state          = value.state
      priority       = value.priority
      unicast_src_ip = module.homelab_project.vms[key].vm_ipv4

      unicast_peer_ip = join(",", [
        for key1, value1 in var.vm_instance :
        module.homelab_project.vms[key1].vm_ipv4
        if module.homelab_project.vms[key].vm_ipv4 !=
        module.homelab_project.vms[key1].vm_ipv4
      ])
    }
  ]
}
