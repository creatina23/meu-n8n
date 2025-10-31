# Base image do n8n
FROM n8nio/n8n:latest

# Variáveis de ambiente
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=senha123
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Forçar uso do OpenAI v4 e instalar LangChain
RUN npm install openai@^4 @n8n/n8n-nodes-langchain

# Expor porta do n8n
EXPOSE 5678
