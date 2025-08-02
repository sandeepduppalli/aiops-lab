# AIOps Lab Setup

This repo provides a hands-on AIOps observability lab using open-source tools:
- **Prometheus**
- **Grafana**
- **Cribl**
- **OpenSearch**
- **OpenSearch Dashboards**

## 🔧 Components

### 1. Prometheus + Grafana

- Folder: `prometheus-grafana/`
- Starts Prometheus, Node Exporter, and Grafana for metric visualization.

### 2. Cribl + OpenSearch

- Folder: `cribl-opensearch/`
- Cribl ingests logs and routes them to OpenSearch for indexing and Dashboards for visualization.

### 3. Scripts

- Folder: `scripts/`
- Automates setup of Docker, Docker Compose, and launches the stack.

## 🚀 Getting Started

```bash
cd scripts
chmod +x setup-aiops.sh aiops-setup.sh
./setup-aiops.sh       # For Grafana + Prometheus
./aiops-setup.sh       # For Cribl + OpenSearch
```

## 🐳 Docker Required

Make sure Docker and Docker Compose are installed and the `ec2-user` is added to the Docker group.

---
