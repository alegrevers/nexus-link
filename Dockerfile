FROM n8nio/n8n

services:
  n8n:
    # Você pode usar "image" diretamente ou "build" com o Dockerfile simples
    # build: . # Se usar "build: ." o Dockerfile simples acima será lido
    image: n8nio/n8n # Se você usar "image" diretamente, o Dockerfile não será usado
    ports:
      - "5678:5678"
    environment:
      - N8N_BASIC_AUTH_ACTIVE=true
      - N8N_BASIC_AUTH_USER=admin
      - N8N_BASIC_AUTH_PASSWORD=admin123
      - N8N_HOST=localhost
      - N8N_PORT=5678
      - TZ=America/Sao_Paulo
    volumes:
      - ./n8n_data:/home/node/.n8n
    restart: unless-stopped