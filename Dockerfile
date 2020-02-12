#Baixa imagem ubuntu com pyyhon e flesk ##
FROM ubuntu:16.04
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev
# Copia o reequirement do flesk e o app 
COPY ./app/ ./app/
#Diretorio de onde vai rodar o App    
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT [ "python" ]
CMD [ "api.py" ]








