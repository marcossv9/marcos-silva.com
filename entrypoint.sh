#!/bin/bash

# Start Ollama in the background.
/bin/ollama serve &
# Record Process ID.
pid=$!

# Pause for Ollama to start.
sleep 5

# Create custom model.
echo "🔵 Creating custom model..."
ollama create marcos-assistant:1.0 -f /root/Modelfile
echo "🟢 Done!"

# Run the custom model.
echo "🔵 Running custom model..."
ollama run marcos-assistant:1.0
echo "🟢 Done!"

# echo "🔴 Retrieve DeepSeek model..."
# ollama pull deepseek-r1:1.5b
# echo "🟢 Done!"

# Wait for Ollama process to finish.
wait $pid
