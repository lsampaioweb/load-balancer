project     = "Load Balancer"
environment = "Staging"

vm_instances = {
  "01" = {
    # Project
    state    = "MASTER"
    priority = 250

    # VM
    target_node = "edge-pve-02"
    vmid        = 1010
    vcpus       = 2
    memory      = 6144
    startup     = "order=11"
    description = "Traefik as our load balancer."

    disks = {
      scsi = {
        # disk0 (required)
        scsi0 = {
          disk = [{}]
        }
        # cloud-init disk (optional)
        # Can be removed after the VM is created.
        # scsi10 = {
        #   cloudinit = [{}]
        # }
      }
    }

    networks = {
      "01" = {
        bridge  = "vmbr103"
        macaddr = "BC:24:11:82:90:74"
      }
    }
  }
}
