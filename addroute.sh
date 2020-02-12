#!/bin/bash  

########## Cria o serviço ############
/usr/bin/curl -i -X POST \
  --url http://localhost:8001/services/ \
  --data 'name=desafio' \
  --data 'url=http://192.168.253.111:5000'
########## Cria a rota ################
/usr/bin/curl -i -X POST \
  --url http://localhost:8001/services/desafio/routes \
  --data 'hosts[]=192.168.253.111:5000
  

