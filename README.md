# homelab-monitoring

# 🖥️ Homelab Monitoring Stack

![Docker](https://img.shields.io/badge/docker-ready-blue)
![Grafana](https://img.shields.io/badge/grafana-monitoring-orange)
![Prometheus](https://img.shields.io/badge/prometheus-metrics-red)
![Tailscale](https://img.shields.io/badge/tailscale-secure-green)

A lightweight **Grafana + Prometheus monitoring stack** running on Docker, with secure remote access via Tailscale.

---

# 📌 Features

- 📊 Grafana dashboards
- 📡 Prometheus metrics collection
- 🖥️ Node Exporter for VM monitoring
- 🔐 Secure HTTPS access via Tailscale
- 🐳 Docker Compose deployment
- ⚡ Easy to scale for homelab environments

---

# 🧱 Architecture
            ┌──────────────────────┐
            │   Remote Device      │
            │ (Laptop / Phone)     │
            └─────────┬────────────┘
                      │ HTTPS (Tailscale)
                      ▼
            ┌──────────────────────┐
            │  Tailscale Network   │
            └─────────┬────────────┘
                      │
                      ▼
    ┌────────────────────────────────────┐
    │   Monitoring Server (CentOS 9)     │
    │                                    │
    │   ┌───────────────┐                │
    │   │   Grafana     │ <── Dashboard  │
    │   └──────┬────────┘                │
    │          │                         │
    │   ┌──────▼────────┐                │
    │   │  Prometheus   │                │
    │   └──────┬────────┘                │
    │          │ scrape metrics          │
    └──────────┼─────────────────────────┘
               │
    ┌──────────▼──────────┐
    │  Linux VMs / Hosts  │
    │  node_exporter      │
    └─────────────────────┘


---

# 📂 Project Structure
homelab-monitoring/
├── docker-compose.yml
├── README.md
├── .gitignore
└── prometheus/
└── prometheus.yml


---

# ⚙️ Setup

## 1. Clone repository

```bash
git clone https://github.com/zaidlaz/homelab-monitoring.git
cd homelab-monitoring
