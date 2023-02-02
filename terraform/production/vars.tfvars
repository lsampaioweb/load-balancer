environment            = "Production"
environment_short_name = "prd"

vm_instance = {
  "01" = {
    # VM
    onboot  = true
    startup = "order=10"
    vcpus   = 3
    networks = {
      "01" = {
        bridge = "vmbr0"
        model  = "virtio"
        tag    = 2005
      }
    }

    # Project
    state    = "MASTER"
    priority = 250
  },
  "02" = {
    # VM
    onboot  = true
    startup = "order=11"
    vcpus   = 3
    networks = {
      "01" = {
        bridge = "vmbr0"
        model  = "virtio"
        tag    = 2005
      }
    }

    # Project
    state    = "BACKUP"
    priority = 240
  }
}
