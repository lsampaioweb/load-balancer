# Load Balancer Deployment with Terraform

This project automates the creation of a **Load Balancer VM** on **Proxmox**, leveraging **Terraform and Ansible**. The VM runs **Traefik** as Docker container for load balancing.

#
### 1. Initialize the Terraform Project

```bash
cd terraform/
terraform init
```

### 2. Usage of `tf.sh` Script

The `tf.sh` script is a helper for running Terraform commands. It accepts **three parameters**:

```text
- <action>        - plan, apply, refresh, or destroy
- <environment>   - home or homelab
- <extra-options> - Optional Terraform flags like -auto-approve

./tf.sh <action> <environment> <extra-options>
```

### 3. Plan the Deployment
```bash
./tf.sh plan home
```

### 4. Apply the Terraform Configuration
```bash
./tf.sh apply home
./tf.sh apply homelab
./tf.sh apply homelab -auto-approve
```

### 5. Destroy the VM (if needed)
```bash
./tf.sh destroy home
```

#
### Created by:

1. Luciano Sampaio.
