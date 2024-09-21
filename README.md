# load-balancer
Project that will create the VMs that will work as the Load Balancer of the HomeLab.

## Getting Started

### Cloning the Repository

This repository includes other repositories as submodules. To clone this repository along with its submodules, run the following command:

```bash
git clone --recurse-submodules https://github.com/lsampaioweb/load-balancer.git
```

If you have already cloned the repository without submodules, initialize and update the submodules with these commands:

```bash
git submodule init

git pull --recurse-submodules
```

Or use the single-line command to initialize and update all submodules:

```bash
git submodule update --init --recursive
```

### Running Terraform Scripts

To set up infrastructure, refer to the Terraform documentation:

- [Terraform](terraform/README.md "Terraform")

### Running Ansible Scripts

To configure the VMs and manage backups, refer to the Ansible documentation:

- [Ansible](ansible/README.md "Ansible")

## License

This project is licensed under the [MIT License](LICENSE "MIT License").

## Created by

- Luciano Sampaio
