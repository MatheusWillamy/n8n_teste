#!/bin/bash

# Aguarde até que a porta 80 esteja aberta (ajuste o tempo limite conforme necessário)
timeout 60 bash -c 'while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' localhost:80)" != "200" ]]; do sleep 1; done'

# Inicie o servidor web na porta 80 (ajuste o comando conforme necessário)
service nginx start

# Mantenha o container em execução
tail -f /dev/null
