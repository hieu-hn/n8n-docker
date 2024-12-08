FROM n8nio/n8n:latest

# Expose port
EXPOSE 5678

# Set default working directory
WORKDIR /home/node

# Add optional environment variables (có thể tuỳ chỉnh)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=allxone
ENV N8N_BASIC_AUTH_PASSWORD=Ba@12345678
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Ensure the permissions are correct for config folder
RUN mkdir -p /home/node/.n8n && chmod 700 /home/node/.n8n
RUN chmod 600 /home/node/.n8n/config

# Start n8n
CMD ["bash", "-c", "n8n"]

