vm_instance = {
  "01" = {
    onboot   = true
    startup  = "order=10"
    vcpus    = 3
    state    = "MASTER"
    priority = 250
  },
  "02" = {
    onboot   = true
    startup  = "order=10"
    vcpus    = 3
    state    = "BACKUP"
    priority = 240
  }
}
