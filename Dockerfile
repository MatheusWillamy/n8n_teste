ROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y curl nginx

# Instala o EasyPanel
RUN curl -sSL https://get.easypanel.io | sh

EXPOSE 80
EXPOSE 443


