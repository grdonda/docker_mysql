# Derivando da imagem oficial do MySQL
FROM mysql:5.7

BUILD ./docker/imagem

# meus dados para o hub
LABEL version="1.0" description="Estudos com banco de dados MySQL" author="Giovanni Donda" email="grdonda@gmail.com"

# rodando para obter possiveis atualizações
RUN apt-get update -y && apt-get upgrade-y && apt-get autoremove -y

# Não preciso criar essa pasta ja com os scripts por conta de ter o volume montado quando subir o container
# ADD ./docker/volume/scripts $HOME/app/scripts

# pasta default
WORKDIR $HOME/app

# Adicionando os scripts SQL para serem executados na criação do banco
COPY ./docker/default/ /docker-entrypoint-initdb.d/

# expondo a porta padrão na rede
EXPOSE 3306:3306