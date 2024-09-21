# Load Balancer Project

This project provides Terraform and Ansible scripts to automate the creation of an Ubuntu VM on Proxmox. The VM is cloned from a template and comes pre-installed with Docker and Traefik, fully configured as a load balancer.

The project leverages a custom Terraform module to simplify the process of deploying VMs in a homelab or production environment.

## Features

- **Proxmox Integration**: Uses Terraform to clone an Ubuntu 24.04 template and deploy a virtual machine.
- **Docker & Traefik Setup**: Automatically installs and configures Docker and Traefik on the VM.
- **Modular & Scalable**: Designed to be easily customizable for different environments, such as home labs or production setups.

## Getting Started

### 1. Terraform Module

The project uses the following Terraform module to create the Proxmox VM:

- [Terraform Proxmox Ubuntu 24.04 Module](https://github.com/lsampaioweb/terraform-proxmox-vm-qemu) - This module simplifies the process of creating an Ubuntu 24.04 virtual machine (server or desktop) on Proxmox VE from a cloned template.

### 2. Project Initialization

Navigate to the `terraform/` directory and initialize the Terraform project:

```bash
cd terraform/
terraform init
```

### 3. Create the VM with Terraform

To manage your VM creation and environment operations, use the included bash script `tf.sh`. Below are some example commands:

```bash
# Plan and apply configurations for the 'home' environment
./tf.sh plan home
./tf.sh apply home -auto-approve

# Apply configurations for the 'homelab' environment
./tf.sh apply homelab

# Destroy the 'home' environment if needed
./tf.sh destroy home
```

The script simplifies Terraform commands, allowing you to quickly manage your VM across different environments.

### 4. Ansible for Post-Provisioning Configuration

After the VM is created, you can use the provided Ansible playbooks to configure Docker and Traefik, ensuring your load balancer is ready to handle traffic.

## Author

**Luciano Sampaio**
