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
  --data 'url=http://IPOUHOSTNAMEDOAPP:5000'

Adicionar rota 

docker run exec api curl -i -X POST \
  --url http://localhost:8001/services/desafio/routes \
  --data 'hosts[]=IPOUHOSTNAMEDOAPP:5000'
  --data 'paths=/desafio'


Get na API para retornar Aplicação python Hello World

docker exec -it api curl -i -X GET   --url http://localhost:8000/desafio

####################################################################################################################################################################################

