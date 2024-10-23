FROM ubuntu:latest

# Instala o EasyPanel
RUN docker run --rm -it \
  -v /etc/easypanel:/etc/easypanel \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  easypanel/easypanel setup

# Criar um volume para persistir os dados do EasyPanel
VOLUME /etc/easypanel

# Expor as portas 80 e 443
EXPOSE 80
EXPOSE 443

# Comando para iniciar o EasyPanel (ajuste conforme necessário)
CMD ["easypanel-start"]

