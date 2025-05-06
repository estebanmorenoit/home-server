# Home Server Using Docker Compose

<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <h3 align="center">Home Server Using Docker Compose</h3>

  <p align="center">
    A comprehensive, self-hosted home server setup leveraging Docker Compose to manage and deploy various services efficiently.
    <br />
    <a href="https://github.com/estebanmorenoit/home-server"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/estebanmorenoit/home-server">View Demo</a>
    ·
    <a href="https://github.com/estebanmorenoit/home-server/issues">Report Bug</a>
    ·
    <a href="https://github.com/estebanmorenoit/home-server/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#services-included">Services Included</a></li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

This repository showcases my journey in setting up a comprehensive home server using Docker Compose. The goal is to host and manage multiple services efficiently, leveraging containerization for scalability and ease of maintenance.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

* ![Linux][Linux]
* ![Docker][Docker]
* ![Docker Compose][Docker-Compose]
* ![Portainer][Portainer]
* ![Jellyfin][Jellyfin]
* ![Grafana][Grafana]
* ![Prometheus][Prometheus]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SERVICES INCLUDED -->
## Services Included

| Service       | Description                                             |
|---------------|---------------------------------------------------------|
| Traefik       | Reverse proxy and load balancer with SSL support       |
| Portainer     | Docker container management UI                         |
| Jellyfin      | Media server for streaming movies and TV shows         |
| Grafana       | Analytics and monitoring dashboard                     |
| Prometheus    | Monitoring system and time series database             |
| Pi-hole       | Network-wide ad blocker                                |

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

- A server running a Linux-based OS
- Docker and Docker Compose installed
- A domain name (optional, for Traefik and HTTPS)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/estebanmorenoit/home-server.git
   cd home-server
   ```

2. Copy the example environment file and configure it:
   ```bash
   cp .env.example .env
   nano .env
   ```

3. Start the services:
   ```bash
   docker-compose up -d
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap

- [x] Set up core services with Docker Compose
- [ ] Implement automated backups
- [ ] Add more self-hosted applications (e.g., Bitwarden, Home Assistant)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any enhancements or bug fixes.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

Esteban Moreno - [morenoramirezesteban@gmail.com](mailto:morenoramirezesteban@gmail.com)

Project Link: [https://github.com/estebanmorenoit/home-server](https://github.com/estebanmorenoit/home-server)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

- [Docker](https://www.docker.com/)
- [Portainer](https://www.portainer.io/)
- [Jellyfin](https://jellyfin.org/)
- [Grafana](https://grafana.com/)
- [Prometheus](https://prometheus.io/)

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
[Traefik]: https://img.shields.io/badge/Traefik-24A1C1?style=for-the-badge&logo=traefikproxy&logoColor=white
[Portainer]: https://img.shields.io/badge/Portainer-13BEF9?style=for-the-badge&logo=portainer&logoColor=white
[Nextcloud]: https://img.shields.io/badge/Nextcloud-0082C9?style=for-the-badge&logo=nextcloud&logoColor=white
[Jellyfin]: https://img.shields.io/badge/Jellyfin-00A4DC?style=for-the-badge&logo=jellyfin&logoColor=white
[Grafana]: https://img.shields.io/badge/Grafana-F46800?style=for-the-badge&logo=grafana&logoColor=white
[Prometheus]: https://img.shields.io/badge/Prometheus-E6522C?style=for-the-badge&logo=prometheus&logoColor=white
