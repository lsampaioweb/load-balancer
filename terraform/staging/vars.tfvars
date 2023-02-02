environment            = "Staging"
environment_short_name = "stg"

vm_instance = {
  "01" = {
    # VM
    onboot  = true
    startup = "order=2010"
    vcpus   = 3
    networks = {
      "01" = {
        bridge = "vmbr0"
        model  = "virtio"
        tag    = 5
      }
    }

    # Project
    state    = "MASTER"
    priority = 250
  },
  "02" = {
    # VM
    onboot  = true
    startup = "order=2011"
    vcpus   = 3
    networks = {
      "01" = {
        bridge = "vmbr0"
        model  = "virtio"
        tag    = 5
      }
    }

    # Project
    state    = "BACKUP"
    priority = 240
  }
}
