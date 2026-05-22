# grafana-prometheus-homelab-monitoring

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

# � Grafana Screenshots

Screenshots of the monitoring dashboards are available in the [`screenshots/`](./screenshots) directory:

| Dashboard | Description |
|-----------|-------------|
| [Server Health Dashboard](./screenshots/server-health-dashboard.jpg) | System performance and health metrics |
| [cAdvisor Docker Insights](./screenshots/cadvisor_docker_insights.jpg) | Container resource usage and metrics |

---

# �📂 Project Structure
grafana-prometheus-homelab-monitoring/
├── docker-compose.yml
├── README.md
├── .gitignore
└── prometheus/
└── prometheus.yml


---

# ⚙️ Setup

## 1. Clone repository

```bash
git clone https://github.com/zaidlaz/grafana-prometheus-homelab-monitoring.git
cd grafana-prometheus-homelab-monitoring
