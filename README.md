# MOAT Docker

The [Museum of All Things](https://github.com/m4ym4y/museum-of-all-things) (MOAT) is a really cool project that I was unable to host in my homelab without a Docker image.

To that end, this Dockerfile pulls a given MOAT release and runs it as an Nginx website.  This allows hosting the MOAT project in Docker-first environments.

The image is built and deployed to [Docker Hub](https://hub.docker.com/r/coltonh476/moat-docker) as a public image for easy consumption.  This image can also be built and deployed to other Docker registries if so preferred.

## Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/)

## Getting Started

1. **Clone the repository:**
    ```bash
    git clone https://github.com/ColtonHerrod/moat-docker.git
    cd moat-docker
    ```

2. **Build and start the containers:**
    ```bash
    docker build -t moat-docker .
    docker run --name moat-docker -d -p 8080:80 moat-docker
    ```

3. **Access the application:**
    - Visit `http://localhost:8080` in your browser.

## Contributing

Contributions are welcome! Please open issues or submit pull requests for improvements.

This is largely focused on my internal Gitea server.  GitHub will not be used for image publishing.

## License

This project is licensed under the MIT License.
