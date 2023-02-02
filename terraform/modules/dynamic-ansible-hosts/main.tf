resource "local_file" "ansible_hosts" {
  content = templatefile(var.path_inventory_hosts_template,
    {
      hosts_list = var.hosts_list
    }
  )
  filename = var.path_inventory_hosts

  directory_permission = var.directory_permission
  file_permission      = var.file_permission

  provisioner "local-exec" {
    working_dir = var.path_ansible_scripts

    command = "ansible-playbook provision.yml"
  }

  # provisioner "local-exec" {
  #   when = destroy

  #   working_dir = "../ansible"

  #   command = "ansible-playbook destroy.yml"
  # }
}
