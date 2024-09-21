Here’s the completed and formatted version of the documentation for the update playbook:

## **Setup Ubuntu Server 24.04 - Update Playbook**

This playbook automates the process of updating all installed packages on an Ubuntu Server 24.04 to the latest available versions, ensuring your system stays secure and up-to-date.

### **Usage**

To update the Ubuntu Server to the latest packages, run the following command in your terminal:

```bash
ansible-playbook update.yml
```

### **Tasks Overview**

1. **Update Package List**: Refreshes the package list to ensure the system is aware of the latest available packages from the repositories.

2. **Upgrade Installed Packages**: Upgrades all installed packages to their latest versions, applying any available security patches and feature updates.

3. **Remove Unnecessary Packages**: (Optional) Removes obsolete packages that are no longer needed after the update, ensuring the system is clean and optimized.

4. **Reboot if Required**: (Optional) If any kernel or critical system packages were updated, the playbook will prompt for a reboot to apply the changes.

## Author

**Luciano Sampaio**
