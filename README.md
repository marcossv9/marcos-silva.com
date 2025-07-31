# Marcos Silva's Personal Website

An AI-powered personal website that answers questions about my professional experience and background.
Built with Python, Flask, and Ollama AI models.

---

## Features
- Interactive AI assistant powered by Ollama (Gemma model)
- Custom dropdown with predefined questions
- Real-time streaming responses (SSE)
- Responsive, modern UI
- Dockerized for easy development and production deployment

---

## Quick Start

See [CONTRIBUTING.md](./CONTRIBUTING.md) for development setup and local run instructions.

---
## Setting up Hetzner VPS

```bash
export TF_VAR_hcloud_token=<YOUR_HETZNER_API_TOKEN>
export TF_VAR_ssh_publickey=<YOUR_SSH_PUBLIC_KEY>
cd infra
tofu init
tofu plan
tofu apply
```

---

## Deploying to Hetzner VPS with Kamal

Production deployments are managed using [Kamal](https://kamal-deploy.com/). You need to have Kamal installed and configured for your Hetzner VPS.

### Ensure you have exported your KAMAL_REGISTRY_PASSWORD:
```bash
export KAMAL_REGISTRY_PASSWORD=<YOUR_REGISTRY_PASSWORD>
```
> NOTE: Ensure you have configured your SSH key and Kamal.

### Deploy Ollama service:
```bash
kamal deploy -c config/deploy.ollama.yml
```

### Deploy Website service:
```bash
kamal deploy -c config/deploy.website.yml
```

See the `config/` directory for deployment configuration files.

---


## Configuration Files
- **Dockerfile**: Single file supports both dev and prod, switches mode based on `FLASK_ENV`
- **compose.dev.yaml**: Development setup with hot reload and file watching
- **pyproject.toml**: Python dependencies and project metadata
- **config/deploy.ollama.yml**: Kamal deployment config for Ollama service
- **config/deploy.website.yml**: Kamal deployment config for website service

---

## Technologies Used
- [Flask](https://flask.palletsprojects.com/) - Web framework
- [Ollama](https://ollama.ai/) - AI model server (Gemma 1B)
- [Docker](https://www.docker.com/) & [Docker Compose](https://docs.docker.com/compose/)
- [Gunicorn](https://gunicorn.org/) - Production WSGI server
- [uv](https://github.com/astral-sh/uv) - Fast Python package manager
- [Kamal](https://kamal-deploy.com/) - Deployment tool for any app
- [Hetzner Cloud](https://www.hetzner.com/cloud) - VPS hosting

---


## Contribution & Conduct

Please see the following documents for details:
- [Code of Conduct](./CODE_OF_CONDUCT.md)
- [Contributing Guidelines](./CONTRIBUTING.md)
- [License (MIT)](./MIT-LICENSE)

---

This project was built to learn about [Ollama](https://ollama.ai), [AI models](https://ollama.ai/library), and [Flask](https://flask.palletsprojects.com/). Most of the HTML and JavaScript was written by AI.

To contribute, fork the repo and submit a pull request!

---


## License

This project is released under the [MIT License](./MIT-LICENSE).

---

## Links
- [Star or Fork the Repo](https://github.com/marcossv9/marcos-silva.com)
- [Ollama](https://ollama.ai)
- [Ollama AI Models](https://ollama.ai/library)
- [Flask Documentation](https://flask.palletsprojects.com/)
