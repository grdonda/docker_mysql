
# MySQL/Docker
Este projeto visa usar o mysql através do docker para que se possa treinar os comandos SQL, Administrar o Banco de dados, Gerenciar usuário e etc.  

É interresante que possuoa algum programa visual para acessar o banco de dados, por exemplo, DBeaver ou Navicat, ou qualquer outro programa que prefira utilizar.  


## Arquivo docker-compose.yaml
Este arquivo de configuração do docker, especifica o que seránecessário para que a imagem do MySQL v5.7 possa ser carregada via container.
A partir do mesmo diretório deste arquivo, pode-se execcutar o comando para "ligar" o container.  
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

# Instalação deste projeto
Para instalar este projeto, é necessário ter instalado antes:
* git  
https://git-scm.com/download/win
* Docker Desktop  
https://www.docker.com/products/docker-desktop

Tendo instalado os programas acima no padrão "next,next,finish", confirme se o ambiente está ok da seguinte forma:

1. Abre o Windows Termina, ou Git Bash, ou o CMD, etc..
2. Execute o comando:  
git --version  
O resultado depois de instalado, deve ser algo como: 
```
c:\ git --version
git version 2.28.0.windows.1
```

Confirmando a instalação do git, crie uma pasta "projeto" (ou como desejar) em C:\ , ou onde preferir, e execute o comando:

```
C:\projeto\ git clone https://github.com/grdonda/docker_mysql.git
```
Será criada uma pasta dentro da pasta projetos com o nome docker_mysql e dentro dela com os arquivos do projeto.

Para que o container possa ser "ligado", dentro da pasta docker_mysql execute o comando:  
```
docker-compose -f "docker-compose.yaml" up -d --build --remove-orphans
```
Agora utilizando o visual studio code, será possivel acessar via plugin do docker, gerenciamento visual do container.  

Consulte os link e referencias para melhor entendimento !!!

## Referências:
* https://docs.microsoft.com/pt-br/virtualization/windowscontainers/manage-docker/configure-docker-daemon  
* https://docs.docker.com/docker-for-windows/install/  
* https://code.visualstudio.com/docs/containers/overview

## Links para download
* Docker Desktop: https://www.docker.com/products/docker-desktop
* Visual Studio Code: https://code.visualstudio.com/download
* Visual Studio Code - Docker plugin: https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker