# Marcos Silva's Personal Website

An AI-powered personal website that can answer questions about my professional experience and background. Built with Python, Flask, and Ollama AI models.

## Features
- Interactive AI assistant that answers questions about my professional experience
- Custom dropdown with predefined questions
- Real-time streaming responses using Server-Sent Events (SSE)
- Responsive design with modern UI
- Powered by Gemma AI model through Ollama

## Quick Start with Docker (Recommended)

1. Clone the repository
```bash
git clone https://github.com/marcossv9/marcos-silva.com.git
cd marcos-silva.com
```

2. Start the application with hot-reload enabled
```bash
docker compose up --build --watch
```

The application will be available at http://localhost:8080. Any changes you make to the code will automatically trigger a reload!

## Technologies Used
- [Flask](https://flask.palletsprojects.com/) - Web framework
- [Ollama](https://ollama.ai/) - AI model server (Gemma 1.0)
- [Python](https://www.python.org/) 3.12 - Backend language
- [uv](https://github.com/astral-sh/uv) - Fast Python package installer
- Docker & Docker Compose - Development and deployment

## Development Details

The project uses a Docker Compose setup with two services:
- `web`: Flask application with hot-reload enabled
- `ollama`: AI model server with custom model configuration

Key files:
- `main.py` - Flask application with SSE streaming
- `Modelfile` - Ollama model configuration (using Gemma 1B)
- `data/marcos_info.txt` - Training data for the AI assistant
- `compose.yaml` - Docker Compose configuration with development mode
- `static/` - Frontend assets (CSS, JS)
- `templates/` - HTML templates

## Production Deployment

For cloud deployment, build for your target architecture:
```bash
docker build --platform=linux/amd64 -t personal-website:latest .
docker tag personal-website:latest your-registry.com/personal-website:latest
docker push your-registry.com/personal-website:latest
```

## Environment Variables

The following can be configured:
- `FLASK_ENV`: Set to 'production' or 'development'
- `PORT`: The port the application listens on (default: 8080)
- `OLLAMA_HOST`: The Ollama server URL (default: http://ollama:11434)

## Project Structure
```
.
├── data/              # Data files for AI training
├── static/            # Static assets (CSS, JS, images)
├── templates/         # HTML templates
├── Dockerfile        # Docker configuration
├── compose.yaml      # Docker Compose configuration
├── main.py           # Flask application
├── Modelfile        # Ollama model configuration
└── requirements.txt  # Python dependencies
```

## Contributing
Contributions are welcome! Please feel free to submit a Pull Request.

## Learn More
- [Flask Documentation](https://flask.palletsprojects.com/)
- [Ollama Documentation](https://ollama.ai/documentation)
- [Docker Compose Watch Mode](https://docs.docker.com/compose/file-watch/)
- [uv Package Manager](https://github.com/astral-sh/uv)
- [Docker's Python Guide](https://docs.docker.com/language/python/)

## License
This project is open source and available under the [MIT License](LICENSE).
