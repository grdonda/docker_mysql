


# Docker 
Alguns comandos que podem ajudar

### Entrando no container para usar o shell
* docker exec -it dba_mysql bash

### Listando imagens instaladas
* docker image list  

### limpeza entre ligar/desligar os containers
* docker network prune --force  
* docker image prune --force  
* docker volume prune --force  

### iniciando o container
* docker-compose -f "docker-compose.yaml" up -d --build --remove-orphans  

### desligando o container
* docker-compose down --remove-orphans  

### persistência de dados
/sql


## Requisitos que utilizei

* windows 10 build > 2004  
* Win wsl 2
* Virtualização via Bios
* docker desktop
* 2/4 gb de ram 
* HD com 40gb
* vscode + plugin docker

Referências:
* https://docs.microsoft.com/pt-br/virtualization/windowscontainers/manage-docker/configure-docker-daemon  
* https://docs.docker.com/docker-for-windows/install/  
