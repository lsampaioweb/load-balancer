# Ansible Playbooks

This repository contains a set of Ansible playbooks to manage the lifecycle of an Ubuntu Server 24.04 virtual machine on Proxmox. The playbooks cover provisioning, setup, application deployment, updates, and destruction of the VM.

## Playbooks

- **Provision the VM**:
  This playbook is initiated by Terraform, and automatically calls both the `setup_vm.yml` and `setup_app.yml` playbooks to fully configure the virtual machine and deploy the application.
  If needed, you can manually run this playbook:
  ```bash
  ansible-playbook provision.yml
  ```

- **Setup the VM**:
  If something goes wrong with the VM, or you need to reconfigure it, you can run the `setup_vm.yml` playbook independently to apply the necessary configurations:
  ```bash
  ansible-playbook setup_vm.yml
  ```

- **Setup the Application**:
  For updating or redeploying the application on the VM, you can run the `setup_app.yml` playbook directly:
  ```bash
  ansible-playbook setup_app.yml
  ```

- **Update the VM**:
  Apply the latest package updates and security patches to the VM:
  ```bash
  ansible-playbook update.yml
  ```

- **Backup the VM**:
  To create a backup of the server’s files, directories, databases, or system configurations, use the following command:
  ```bash
  ansible-playbook backup.yml
  ```

- **Restore the VM**:
  To restore the server’s files, directories, databases, or system configurations from the most recent backup, use the following command:
  ```bash
  ansible-playbook restore.yml
  ```

- **Destroy the VM**:
  Typically, this playbook should not be called manually, as Terraform handles VM destruction by calling this playbook when necessary:
  ```bash
  ansible-playbook destroy.yml
  ```

## Author

**Luciano Sampaio**
