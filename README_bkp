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

###Ensure the following ports are open in your EC2 security group:

```Grafana: 3000
Prometheus: 9090
Cribl: 9000
OpenSearch API: 9200
OpenSearch Dashboards: 5601
Log Ingestion TCP (Cribl): 5140```

## 🐳 Access URLs

Once up, access services via your EC2 public IP:

```Grafana: http://<EC2_PUBLIC_IP>:3000
Prometheus: http://<EC2_PUBLIC_IP>:9090
Cribl: http://<EC2_PUBLIC_IP>:9000
OpenSearch Dashboards: http://<EC2_PUBLIC_IP>:5601```
---
