# 🧠 AIOps Lab Setup

This repository contains a complete hands-on lab for building an AIOps observability stack using **open-source** tools:

- 📈 **Prometheus** – for collecting metrics
- 📊 **Grafana** – for visualizing metrics
- 📥 **Cribl** – for log routing and enrichment
- 🔍 **OpenSearch** – for storing and querying logs
- 📺 **OpenSearch Dashboards** – for visualizing logs

---

## 🔧 Folder Structure

aiops-lab/
│
├── prometheus-grafana/ # Docker Compose for Prometheus + Grafana
├── cribl-opensearch/ # Docker Compose for Cribl + OpenSearch
└── scripts/ # Shell scripts to set up Docker & the lab

yaml
Copy
Edit

---

## 🚀 Getting Started

### 1. Connect to your EC2 Instance

Make sure your EC2 instance (Amazon Linux) is running and you're connected via SSH.

### 2. Run the Setup Scripts

```bash
cd scripts
chmod +x setup-aiops.sh aiops-setup.sh
./setup-aiops.sh       # Installs Docker, Docker Compose
./aiops-setup.sh       # Launches the entire AIOps stack
🐳 Docker Requirements
Ensure:

Docker and Docker Compose are installed

ec2-user is added to the docker group

🔐 Open These Ports in EC2 Security Group
Service	Port
Grafana	3000
Prometheus	9090
Cribl UI	9000
OpenSearch API	9200
OpenSearch Dashboards	5601
Log TCP Input (Cribl)	5140

🌐 Access URLs
Replace <EC2_PUBLIC_IP> with your EC2 instance's public IP.

Grafana: http://<EC2_PUBLIC_IP>:3000

Prometheus: http://<EC2_PUBLIC_IP>:9090

Cribl UI: http://<EC2_PUBLIC_IP>:9000

OpenSearch Dashboards: http://<EC2_PUBLIC_IP>:5601

🛠️ Customization & Extensions
You can:

Add anomaly detection expressions in Cribl

Forward logs to Splunk or other tools

Set up alerting and ML-driven analysis

📂 Contributing
Feel free to fork this project, add features, or use it in your own learning or production lab!

📜 License
This lab setup is open-source and for educational purposes. Enjoy experimenting!

yaml
Copy
Edit

---

### ✅ How to use:
1. Open a terminal on your EC2 instance.
2. Run:  
   ```bash
   nano README.md
Paste the above content.

Save using Ctrl+O, Enter, then exit with Ctrl+X.
