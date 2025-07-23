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


## Quick Start (Development)

### 1. Clone the repository
```bash
git clone https://github.com/marcossv9/marcos-silva.com.git
cd marcos-silva.com
```

### 2. Development Mode (Hot Reload)

Use [`compose.dev.yaml`](compose.dev.yaml) for live code reloading and development features:

```bash
docker compose -f compose.dev.yaml up --build --watch
```
- The app will be available at [http://localhost:8080](http://localhost:8080)
- Any code changes will automatically reload the app (thanks to the `develop` section in `compose.dev.yaml`)
- Ollama may take a few seconds to start; wait for the "Ollama API is ready!" message before sending your first request

---

## Deploying to Hetzner VPS with Kamal

Production deployments are managed using [Kamal](https://kamal-deploy.com/). You need to have Kamal installed and configured for your Hetzner VPS.

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

---


## Project Structure
```
marcos-silva.com/
├── compose.dev.yaml
├── Dockerfile
├── pyproject.toml
├── main.py
├── static/
├── templates/
├── data/
├── ollama/
├── entrypoint.sh
├── Modelfile
├── config/
│   ├── deploy.ollama.yml
│   └── deploy.website.yml
└── ...
```

---

## Notes
- This project was built to learn about [Ollama](https://ollama.ai), [AI models](https://ollama.ai/library), and [Flask](https://flask.palletsprojects.com/).
- Most of the HTML and JavaScript was written by AI.
- To contribute, fork the repo and submit a pull request!

---

## License
MIT License

---

## Links
- [Star or Fork the Repo](https://github.com/marcossv9/marcos-silva.com)
- [Ollama](https://ollama.ai)
- [Ollama AI Models](https://ollama.ai/library)
- [Flask Documentation](https://flask.palletsprojects.com/)
