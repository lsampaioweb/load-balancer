project     = "Load Balancer"
environment = "Production"

vm_instances = {
  "01" = {
    # Project
    state    = "MASTER"
    priority = 250

    # VM
    startup = "order=10"
    networks = {
      "01" = {
        tag = 2005
      }
    }
  },
  "02" = {
    # Project
    state    = "BACKUP"
    priority = 240

    # VM
    startup = "order=11"
    networks = {
      "01" = {
        tag = 2005
      }
    }
  }
}
