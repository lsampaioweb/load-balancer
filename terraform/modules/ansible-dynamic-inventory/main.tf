resource "local_file" "dynamic_inventory" {
  content = templatefile(var.path_inventory_template,
    {
      hosts_list = var.hosts_list
    }
  )
  filename = var.path_inventory

  directory_permission = var.directory_permission
  file_permission      = var.file_permission

  provisioner "local-exec" {
    when = create

    working_dir = var.path_playbook_scripts

    command = "ansible-playbook ${var.playbook_provision}"
  }

  provisioner "local-exec" {
    when = destroy

    working_dir = "../ansible"

    command = "ansible-playbook destroy.yml"
  }
}
