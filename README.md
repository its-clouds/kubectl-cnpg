# Dockerized Kubectl with CNPG Plugin

![Docker](https://img.shields.io/badge/docker-ready-blue)
![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![License](https://img.shields.io/badge/license-MIT-green)

## Overview
This project provides a Docker image that includes `kubectl` and the [`cloudnative-pg` (CNPG)](https://github.com/cloudnative-pg) plugin. The image is based on a minimal, secure base image from the Distroless project.

## Features
- **kubectl**: Latest development version of `kubectl`.
- **CNPG Plugin**: Cloudnative-pg plugin for Kubernetes.
- **Secure Base Image**: Using `gcr.io/distroless/static:nonroot` for a minimal and secure runtime environment.

## Docker Image
The image is available on GHCR. You can pull the image using the following command:

```sh
docker pull ghcr.io/its-clouds/kubectl-cnpg:v1.0.0
docker pull ghcr.io/its-clouds/kubectl-cnpg:sha256-4ffe6e4479b3016cf02db67fb4ef82bd61d3318d46a79a6ed0a7d1a30493b378.sig
```

## Usage

To use the kubectl client with the CNPG plugin, run the container as follows:
```
docker run -it --rm ghcr.io/its-clouds/kubectl-cnpg kubectl <command>
```

Example using the CNPG plugin:
```
docker run -it --rm yourusername/yourimagename kubectl cnpg <command>
```

## Installation Steps
- **Clone the Repository**
To get started, clone the repository:
```
git clone https://github.com/its-clouds/kubectl-cnpg.git
cd kubectl-cnpg
```
- **Build the Docker Image**
If you'd like to build the image yourself, use the following command:
```
docker build -t yourusername/yourimagename:latest .
```

## Development
### Prerequisites
- Docker
**Modifying the Dockerfile**
Make the necessary changes to the Dockerfile and rebuild the image using the above build command.

### Testing
You can test the Docker image by running:
```
docker run -it --rm yourusername/yourimagename:latest kubectl version
docker run -it --rm yourusername/yourimagename:latest kubectl cnpg version
```

## Contributing
Contributions are welcome! Please fork the repository and open a pull request to make this project better.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contact
For any questions or inquiries, please open an issue or contact the project maintainers directly.
