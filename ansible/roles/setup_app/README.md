# Setup Ubuntu Server 24.04 Application

This playbook automates the process of deploying application files, creating necessary Docker networks, and starting the containers on an Ubuntu 24.04 server.

## Usage

To run the playbook, execute the following command in your terminal:

```bash
ansible-playbook setup_app.yml
```

## Tasks

The playbook performs the following tasks:

### 1. Copy the Application's Files and Folders to Docker
- Ensures that all application files and necessary folders are copied to the designated Docker path. This step deploys your app code and configuration files to the server.

### 2. Create the Reverse Proxy Docker Network
- Sets up a dedicated Docker network for the reverse proxy, enabling Traefik or any other reverse proxy to route traffic efficiently to the correct containers.

### 3. Start the Container
- Ensures that the application container(s) are started using Docker Compose commands, making the application live and ready to serve traffic.

## Author

**Luciano Sampaio**
