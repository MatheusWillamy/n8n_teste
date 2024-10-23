FROM ubuntu:latest

# Instalar dependências
RUN apt-get update && \
    apt-get install -y curl wget gnupg2 software-properties-common apt-transport-https ca-certificates

# Adicionar repositório do EasyPanel
RUN wget -qO- https://get.easypanel.io/key | apt-key add - && \
    add-apt-repository "deb https://get.easypanel.io/ubuntu $(lsb_release -cs) stable"

# Atualizar lista de pacotes e instalar o EasyPanel
RUN apt-get update && \
    apt-get install -y easypanel

# Expor a porta 80 (HTTP) e 443 (HTTPS)
EXPOSE 80 443

# Comando para iniciar o EasyPanel
CMD ["easypanel-start"]
