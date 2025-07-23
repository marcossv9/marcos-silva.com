# Dockerfile for custom Ollama container
FROM ollama/ollama:latest

# Set environment variable for Ollama host
ENV OLLAMA_HOST=0.0.0.0:11434

# Copy custom model and entrypoint script into the container
# COPY ollama/ollama /root/.ollama
COPY Modelfile /root/Modelfile
COPY entrypoint.sh /entrypoint.sh
COPY data/marcos_info.txt /data/marcos_info.txt

# Make entrypoint script executable
RUN chmod +x /entrypoint.sh

# Set entrypoint
ENTRYPOINT ["/usr/bin/bash", "./entrypoint.sh"]

# Expose Ollama API port
EXPOSE 11434
