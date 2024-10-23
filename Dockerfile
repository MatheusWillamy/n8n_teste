FROM ubuntu:latest

RUN curl -sSL https://get.easypanel.io | sh

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 80
EXPOSE 443

CMD ["/start.sh"]
