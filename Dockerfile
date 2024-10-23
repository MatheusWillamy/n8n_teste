FROM ubuntu:latest

RUN curl -sSL https://get.easypanel.io | sh

EXPOSE 80
EXPOSE 443
