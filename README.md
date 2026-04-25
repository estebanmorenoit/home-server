<a name="readme-top"></a>

<div align="center">

# 🖥️ Home Server — Docker Compose Stack

**A self-hosted home server stack for media, monitoring, DevOps, home automation,  
and Kubernetes exam simulation — managed through a single Docker Compose file.**

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

[🐛 Report Bug](https://github.com/estebanmorenoit/home-server/issues) · [✨ Request Feature](https://github.com/estebanmorenoit/home-server/issues)

</div>

---

<details>
  <summary>📋 Table of Contents</summary>
  <ol>
    <li><a href="#-about">About</a></li>
    <li><a href="#-built-with">Built With</a></li>
    <li><a href="#-services">Services</a></li>
    <li><a href="#-getting-started">Getting Started</a></li>
    <li><a href="#-environment-variables">Environment Variables</a></li>
    <li><a href="#-scripts">Scripts</a></li>
    <li><a href="#-roadmap">Roadmap</a></li>
    <li><a href="#-contributing">Contributing</a></li>
    <li><a href="#-license">License</a></li>
    <li><a href="#-contact">Contact</a></li>
    <li><a href="#-acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

---

## 📖 About

This repository contains my personal home server setup built with Docker Compose. The stack covers a wide range of self-hosted services: a full media automation suite, system monitoring, home automation, a browser-accessible Linux desktop, a CI/CD server, and a complete Kubernetes exam simulator environment.

Everything runs behind a shared external `web-proxy` Docker network, allowing services to be reached from a reverse proxy without exposing unnecessary ports.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🛠️ Built With

<div align="center">

![Linux][Linux] ![Docker][Docker] ![Docker Compose][Docker-Compose] ![Portainer][Portainer] ![Jellyfin][Jellyfin] ![Grafana][Grafana] ![Prometheus][Prometheus]

</div>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 📦 Services

<details>
<summary><b>🖥️ System</b></summary>
<br>

| Service | Description |
| ------- | ----------- |
| [Portainer](https://www.portainer.io/) | Docker container management UI |
| [Plugsy](https://github.com/plugsy/core) | Homepage dashboard with service links |

</details>

<details>
<summary><b>🎬 Media</b></summary>
<br>

| Service | Description |
| ------- | ----------- |
| [Jellyfin](https://jellyfin.org/) | Open-source media server for movies and TV |
| [Plex](https://www.plex.tv/) | Media server with Plex ecosystem support |
| [Transmission](https://transmissionbt.com/) | BitTorrent download client |
| [Prowlarr](https://github.com/Prowlarr/Prowlarr) | Indexer manager/proxy for Sonarr & Radarr |
| [Sonarr](https://sonarr.tv/) | Automated TV show library manager (PVR) |
| [Radarr](https://radarr.video/) | Automated movie library manager (PVR) |
| [Lidarr](https://lidarr.audio/) | Automated music library manager |
| [Readarr](https://readarr.com/) | Automated book library manager |
| [Bazarr](https://www.bazarr.media/) | Automatic subtitle downloader |
| [Ombi](https://ombi.io/) | Media request management for Plex |
| [Kavita](https://www.kavitareader.com/) | Manga, comics, and ebook server |

</details>

<details>
<summary><b>📊 Monitoring</b></summary>
<br>

| Service | Description |
| ------- | ----------- |
| [Prometheus](https://prometheus.io/) | Metrics collection and time-series database |
| [Grafana](https://grafana.com/) | Metrics visualization and dashboards |
| [Node Exporter](https://github.com/prometheus/node_exporter) | Host-level hardware and OS metrics |
| [cAdvisor](https://github.com/google/cadvisor) | Per-container resource usage metrics |

</details>

<details>
<summary><b>🔧 Tools</b></summary>
<br>

| Service | Description |
| ------- | ----------- |
| [VS Code Server](https://github.com/linuxserver/docker-code-server) | Full VS Code IDE accessible from a browser |
| [Duplicati](https://www.duplicati.com/) | Encrypted cloud and local backup |
| [Home Assistant](https://www.home-assistant.io/) | Home automation and smart device hub |
| [Webtop](https://github.com/linuxserver/docker-webtop) | Full Linux desktop environment in the browser |

</details>

<details>
<summary><b>⚙️ DevOps</b></summary>
<br>

| Service | Description |
| ------- | ----------- |
| [Jenkins](https://www.jenkins.io/) | CI/CD automation server |

</details>

<details>
<summary><b>🎓 Education</b></summary>
<br>

| Service | Description |
| ------- | ----------- |
| [CK-X Simulator](https://github.com/nishanb/CK-X) | Kubernetes (CKA/CKAD/CKS) exam practice environment |

> [!NOTE]
> The CK-X Simulator is a multi-container stack: `remote-desktop`, `webapp`, `nginx`, `jumphost`, `remote-terminal`, `k8s-api-server`, `facilitator`, and `redis`.

</details>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🚀 Getting Started

### Prerequisites

- A server running a Linux-based OS
- [Docker](https://docs.docker.com/engine/install/) and [Docker Compose](https://docs.docker.com/compose/install/) installed
- An external Docker network named `web-proxy` (used by all services)

### Installation

**1. Clone the repository**
```bash
git clone https://github.com/estebanmorenoit/home-server.git
cd home-server
```

**2. Create the external Docker network**
```bash
docker network create web-proxy
```

**3. Create your `.env` file** (see [Environment Variables](#%EF%B8%8F-environment-variables))
```bash
nano .env
```

**4. Copy the Prometheus config**
```bash
sudo mkdir -p /etc/prometheus
sudo cp prometheus.yml /etc/prometheus/prometheus.yml
```

**5. Pull and start all services**
```bash
docker-compose pull
docker-compose up -d --build --remove-orphans
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## ⚙️ Environment Variables

Create a `.env` file in the project root with the following variables:

| Variable | Description | Example |
| -------- | ----------- | ------- |
| `DOCKERDIR` | Base path for container config volumes | `/home/user/docker` |
| `MEDIALIBRARY` | Root path of the media library | `/mnt/data/media` |
| `DATAPOOL` | Root path for additional storage (used by Lidarr) | `/mnt/data` |
| `IPADDRESS` | LAN IP of the host (used in Plugsy dashboard links) | `192.168.1.100` |
| `PUID` | User ID for file permission mapping | `1000` |
| `PGID` | Group ID for file permission mapping | `1000` |
| `TZ` | Timezone | `Europe/London` |
| `PLEXCLAIM` | Plex claim token from [plex.tv/claim](https://www.plex.tv/claim/) | `claim-xxxx` |

> [!TIP]
> Run `id` in your terminal to get your `PUID` and `PGID` values.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 📜 Scripts

The [`scripts/`](./scripts/) directory contains helper utilities:

| Script | Purpose |
| ------ | ------- |
| [`homeserver-backup.sh`](./scripts/homeserver-backup.sh) | Backs up Docker config directories |
| [`jenkins-and-docker.sh`](./scripts/jenkins-and-docker.sh) | Sets up Jenkins with Docker access |
| [`update_docker_compose.sh`](./scripts/update_docker_compose.sh) | Pulls latest images and restarts changed containers |

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🗺️ Roadmap

- [x] Set up core services with Docker Compose
- [x] Add full media stack (Jellyfin, Plex, Sonarr, Radarr, Lidarr, Readarr, Bazarr, Prowlarr)
- [x] Add media request management (Ombi) and comics/books reader (Kavita)
- [x] Implement monitoring stack (Prometheus, Grafana, Node Exporter, cAdvisor)
- [x] Add DevOps tooling (Jenkins)
- [x] Add home automation (Home Assistant)
- [x] Add Kubernetes exam simulator (CK-X)
- [ ] Add automated backups via Duplicati schedules
- [ ] Add password manager (e.g., Vaultwarden)
- [ ] Add reverse proxy with SSL (e.g., Traefik or Nginx Proxy Manager)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🤝 Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any enhancements or bug fixes.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 📄 License

Distributed under the MIT License. See [`LICENSE`](./LICENSE) for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 📬 Contact

**Esteban Moreno** — [morenoramirezesteban@gmail.com](mailto:morenoramirezesteban@gmail.com)

[![LinkedIn][linkedin-shield]][linkedin-url]

Project Link: [https://github.com/estebanmorenoit/home-server](https://github.com/estebanmorenoit/home-server)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🙏 Acknowledgments

- [Docker](https://www.docker.com/)
- [Portainer](https://www.portainer.io/)
- [Jellyfin](https://jellyfin.org/) / [Plex](https://www.plex.tv/)
- [Sonarr](https://sonarr.tv/) / [Radarr](https://radarr.video/) / [Prowlarr](https://github.com/Prowlarr/Prowlarr)
- [Grafana](https://grafana.com/) / [Prometheus](https://prometheus.io/)
- [Home Assistant](https://www.home-assistant.io/)
- [CK-X Simulator](https://github.com/nishanb/CK-X)
- [LinuxServer.io](https://www.linuxserver.io/) — base images for many containers
- [Hotio](https://hotio.dev/) — optimised images for the *arr stack

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/estebanmorenoit/home-server.svg?style=for-the-badge
[contributors-url]: https://github.com/estebanmorenoit/home-server/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/estebanmorenoit/home-server.svg?style=for-the-badge
[forks-url]: https://github.com/estebanmorenoit/home-server/network/members
[stars-shield]: https://img.shields.io/github/stars/estebanmorenoit/home-server.svg?style=for-the-badge
[stars-url]: https://github.com/estebanmorenoit/home-server/stargazers
[issues-shield]: https://img.shields.io/github/issues/estebanmorenoit/home-server.svg?style=for-the-badge
[issues-url]: https://github.com/estebanmorenoit/home-server/issues
[license-shield]: https://img.shields.io/github/license/estebanmorenoit/home-server.svg?style=for-the-badge
[license-url]: https://github.com/estebanmorenoit/home-server/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/estebanmorenoramirez/

[Linux]: https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black
[Docker]: https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white
[Docker-Compose]: https://img.shields.io/badge/Docker%20Compose-2496ED?style=for-the-badge&logo=docker&logoColor=white
[Portainer]: https://img.shields.io/badge/Portainer-13BEF9?style=for-the-badge&logo=portainer&logoColor=white
[Jellyfin]: https://img.shields.io/badge/Jellyfin-00A4DC?style=for-the-badge&logo=jellyfin&logoColor=white
[Grafana]: https://img.shields.io/badge/Grafana-F46800?style=for-the-badge&logo=grafana&logoColor=white
[Prometheus]: https://img.shields.io/badge/Prometheus-E6522C?style=for-the-badge&logo=prometheus&logoColor=white
