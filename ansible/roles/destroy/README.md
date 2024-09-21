# Destroy Ubuntu Server 24.04

This playbook is designed to safely remove an Ubuntu Server 24.04 from your infrastructure by cleaning up SSH references and ensuring the server hostname is properly removed.

## Usage

To execute the playbook and destroy the Ubuntu server, run the following command in your terminal:

```bash
ansible-playbook destroy.yml
```

## Tasks Overview

1. **Remove the VM's Fingerprint from `known_hosts`**
   - Ensures that the server’s SSH fingerprint is removed from the `known_hosts` file on the host machine to prevent issues when reconnecting in the future.

2. **Remove Local Signed Key Files**
   - Deletes the local signed SSH key files related to the server on the SSH Signer Host, ensuring that there are no leftover credentials or references.

## Author

**Luciano Sampaio**