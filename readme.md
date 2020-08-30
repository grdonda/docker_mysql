# Docker - Ambiente MySQL para estudos  

utilizado o Docker como plataforma para obter as imagens do MySQL de acordo com as necessidades do estudo. v5.7 e v8.  

Pasta scripts com a trajetoria de estudos SQL para MySQL.  


# Considerações  

Dentro do ambiente a pasta /app será montada com a pasta scripts
A pasta /app será o working_dir   


Crio a imagem do mysql de uma imagem original.
Essa "copia" ficará disponivel no meu Hub para meus estudos em determinada versão do programa. p.e.: v5.7 e v8.0  

# Subindo a aplicação em docker

```
$ docker-compose up -f "./docker-compose.yaml" --remove-orphans
```
```
$ docker-compose down --remove-orphans
```
