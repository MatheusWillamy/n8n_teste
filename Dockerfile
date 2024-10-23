FROM ubuntu:latest

RUN curl -sSL https://get.easypanel.io | sh

ENTRYPOINT ["docker", "run", "-p", "80:80", "-p", "443:443", "easypanel"]
