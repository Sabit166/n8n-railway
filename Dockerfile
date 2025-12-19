# Use official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Copy workflows if exported
COPY workflows.json /home/node/.n8n/workflows.json

# Copy .env
COPY .env /home/node/.n8n/.env

# Expose n8n default port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
