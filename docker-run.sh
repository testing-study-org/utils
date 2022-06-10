#build de ambiente dev
docker build -t node-dev:latest .
#na pasta do projeto/console IDE, executar o docker de dev
docker run --rm -it --name node-dev -u node -v ./src:/code/src:rw -v ./tests:/code/tests:rw node-dev bash

#OU fazer o download da imagem publica
docker pull deaple/node-dev:latest
#renomear
docker tag deaple/node-dev:latest node-dev:latest

#todos os comandos (npm install, npx jest, etc) devem ser executados dentro do container