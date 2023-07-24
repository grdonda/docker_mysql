# comando para criação de tabelas e inserção de dados iniciais

use docker_mysql_001;

CREATE table if not exists pessoas (
    id int not null auto_increment,
    nome varchar(64) not null,
    email varchar(64) not null,
    primary key (id)
) engine = InnoDB;