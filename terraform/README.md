# load-balancer
Project with Terraform and Ansible scripts to create an Ubuntu VM on Proxmox from a cloned template with Docker and Traefik installed and configured.

This project uses my Terraform Module. It has some commands that should be executed.

1. [Terraform Proxmox Ubuntu 22.04](https://github.com/lsampaioweb/terraform-proxmox-vm-qemu) - Repository of a Terraform module to create an Ubuntu 22.04 virtual machine (server or desktop) on Proxmox VE from a cloned template.

Run these commands on the computer that is running Terraform:
```bash
  01 - Initialize the project
    cd terraform/
    terraform init

  02 - Run Terraform to create the VM. This bash is just a helper.
    ./tf.sh plan staging
    ./tf.sh apply staging -auto-approve
    ./tf.sh destory staging
```

#
### Created by:

1. Luciano Sampaio.
