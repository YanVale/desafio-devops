####################################################################################################################################################################################
README.md

Rodar arquivo docker-compose , ou docker stack , para swarm .

####################################################################################################################################################################################

Apos subir containers 

Rodar no docker host 

Adicionar serviço 
docker run exec api curl -i -X POST \
  --url http://localhost:8001/services/ \
  --data 'name=desafio' \
  --data 'url=http://192.168.253.111:5000'

Adicionar rota 

docker run exec api curl -i -X POST \
  --url http://localhost:8001/services/desafio/routes \
  --data 'hosts[]=192.168.253.111:5000'


Get na API para retornar Aplicação python Hello World

docker run exec api curl -i -X GET \
  --url http://localhost:8000/ \
  --header 'Host: 192.168.253.111:5000'

####################################################################################################################################################################################

