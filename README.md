# README

## Overview

This repository provides a multi-service environment using Docker Compose, including:

- **OpenHands**: An AI-powered application for workflow automation.
- **n8n**: A powerful workflow automation tool.
- **dify**: Included as a submodule, launched via its own Docker Compose setup.

---

## Prerequisites

- Docker & Docker Compose installed
- Git (for submodules)

---

## Setup

1. **Clone the repository (with submodules):**
   ```sh
   git clone --recurse-submodules <repo-url>
   ```

2. **Start all services:**
   ```sh
   ./start_all.sh
   ```

   This script will:
   - Start the `openhands` and `n8n` services via Docker Compose.
   - Start the `dify` service (from the submodule) on port 13003.

3. **Stop all services:**
   ```sh
   ./stop_all.sh
   ```

   This script will:
   - Stop the `openhands` and `n8n` services.
   - Stop the `dify` service (from the submodule).

---

## Services

### OpenHands

- **Image:** `docker.all-hands.dev/all-hands-ai/openhands:0.40`
- **Port:** 13000 (mapped to container 3000)
- **State Volume:** `openhands-state`
- **Docker socket:** Mounted for internal orchestration

### n8n

- **Image:** `docker.n8n.io/n8nio/n8n:latest`
- **Port:** 13004 (mapped to container 5678)
- **Data Volume:** `n8n_data`
- **Timezone:** Asia/Tokyo

### dify

- Managed as a git submodule in `dify/`
- Started via its own Docker Compose in `dify/docker`
- **Port:** 13003 (via `EXPOSE_NGINX_PORT`)

---

## Stopping Services

To stop all services:
```sh
./stop_all.sh
```

---

## Notes

- Make sure to update submodules if needed:
  ```sh
  git submodule update --init --recursive
  ```
- Adjust ports in `start_all.sh` or `docker-compose.yml` if you have conflicts.

---

## License

See individual components for their respective licenses.

---

Let me know if you want a Japanese version or more details on any service.
