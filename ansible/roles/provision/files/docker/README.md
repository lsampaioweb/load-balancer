# Traefik Setup

1. **Create Network:**
    ```bash
    docker network create reverse-proxy
    ```

1. **Start the Container:**
    ```bash
    docker compose up -d
    ```

1. **View Container Logs:**
    ```bash
    docker compose logs -f traefik
    ```

1. **Access the Container:**
    ```bash
    docker exec -it traefik sh
    ```

1. **Stop the Container:**
    ```bash
    docker compose down
    ```

1. **Access the Load Balancer:**
    - [https://edge-loadbalancer.lan.homelab](https://edge-loadbalancer.lan.homelab)
    - [https://loadbalancer.lan.homelab](https://loadbalancer.lan.homelab)

[Links](links.md "Links")

[MIT License](LICENSE "MIT License")

### Created by:

1. Luciano Sampaio.
