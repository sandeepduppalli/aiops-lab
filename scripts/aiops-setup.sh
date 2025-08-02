#!/bin/bash

# Update and install Docker
sudo yum update -y
sudo amazon-linux-extras enable docker
sudo yum install docker -y
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker ec2-user

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.24.7/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Create working dir
mkdir -p ~/aiops-logs-lab && cd ~/aiops-logs-lab

# Create Docker Compose
cat <<EOF > docker-compose.yml
version: '3.8'
services:
  opensearch:
    image: opensearchproject/opensearch:2.13.0
    container_name: opensearch
    environment:
      - discovery.type=single-node
      - plugins.security.disabled=true
      - OPENSEARCH_JAVA_OPTS=-Xms512m -Xmx512m
      - OPENSEARCH_INITIAL_ADMIN_PASSWORD=
    ulimits:
      memlock:
        soft: -1
        hard: -1
    ports:
      - "9200:9200"
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost:9200"]
      interval: 30s
      retries: 10

  dashboards:
    image: opensearchproject/opensearch-dashboards:2.13.0
    container_name: dashboards
    ports:
      - "5601:5601"
    environment:
      - OPENSEARCH_HOSTS=http://opensearch:9200
      - DISABLE_SECURITY_DASHBOARDS_PLUGIN=true
    depends_on:
      opensearch:
        condition: service_healthy

  cribl:
    image: cribl/cribl:latest
    container_name: cribl
    ports:
      - "9000:9000"
      - "10080:10080"
      - "5140:5140"
    environment:
      - CRIBL_DIST_MODE=single
    volumes:
      - cribl_data:/opt/cribl

volumes:
  cribl_data:
EOF

# Start containers
docker-compose up -d
