
# MySQL/Docker
Este projeto visa usar o mysql através do docker para que se possa treinar os comandos SQL, Administrar o Banco de dados, Gerenciar usuário e etc.  

## Gerenciamento por docker-compose.yaml
Este arquivo de configuração do docker, especifica o é necessário para que a imagem do MySQL v5.7 possa ser carregada no container.
A partir do mesmo diretorio do arquivo, pode-se execcutar o comando para "ligar" o container.  
```
docker-compose -f "docker-compose.yaml" up -d --build --remove-orphans
```
Ao executar o comando, o arquivo docker-compose.yaml será lido e a partir dele, algumas configurações serão solicitadas, como por exemplo, expor a porta 3306 para outros programas possam acessar o banco de dados.

## Arquivo dos Environments
É possivel utilizar o arquivo dentro da pasta docker/env/mysql.env para setar as variaveis de ambiente que o MySQL vai carregar ao iniciar o container. Por Exemplo, dizer que a senha do usuario ROOT será MySQL@root da seguinte maneira:
```
MYSQL_ROOT_PASSWORD=MySQL@Root
```

# Docker CLI
Alguns comandos que podem ajudar no gerenciamento do container:

### Entrando no container para usar o shell 
Acesso ao sistema onde o mysql está instalado dentro do container ( no caso, linux )
* docker exec -it dba_mysql bash  
_Dentro do container, você poderá executar comandos MySQL diretamente no "servidor", por exemplo:_
```
mysql -u root -p
```

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

# Persistência de dados
O docker, através do recurso de Volume, permite que seus arquivos persistam ao ligar e desligar o container.


### Pasta de arquivos
```
/sql
```
Esta pasta corresponde a pasta que será carregada dentro do container /app/sql que esta definida no arquivo docker-compose.yaml como "working_dir".

# Requisitos que utilizei

* windows 10 build > 2004  
* Win wsl 2
* Virtualização via Bios
* docker desktop
* 2/4 gb de ram 
* HD com 40gb
* vscode + plugin docker

## Referências:
* https://docs.microsoft.com/pt-br/virtualization/windowscontainers/manage-docker/configure-docker-daemon  
* https://docs.docker.com/docker-for-windows/install/  
* https://code.visualstudio.com/docs/containers/overview

## Links para download
* Docker Desktop: https://www.docker.com/products/docker-desktop
* Visual Studio Code: https://code.visualstudio.com/download
* Visual Studio Code - Docker plugin: https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker