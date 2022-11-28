-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

create table usuario (
	idPessoa int primary key auto_increment,
    nome varchar(45),
    sobreNome varchar(45),
    email varchar(45),
    cpf char(11),
    rg char(9),
    logradouro varchar(80),
    bairro varchar(45),
    numero int,
    complemento varchar(45),
    senha varchar(45)
);

create table cachorro (
idCachorro int primary key auto_increment,
nome varchar(45),
idade int,
sexo char(1),
raca varchar(45),
descricao varchar(80),
fkUsuario int,
foreign key(fkUsuario) references usuario(idPessoa)
) auto_increment=001;

CREATE TABLE aviso (
	id INT AUTO_INCREMENT,
	nota VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id),
    primary key (id, fk_usuario)
);

/*
comandos para criar usuário em banco de dados azure, sqlserver,
com permissão de insert + update + delete + select
*/

CREATE USER [usuarioParaAPIWebDataViz_datawriter_datareader]
WITH PASSWORD = '#Gf_senhaParaAPIWebDataViz',
DEFAULT_SCHEMA = dbo;

EXEC sys.sp_addrolemember @rolename = N'db_datawriter',
@membername = N'usuarioParaAPIWebDataViz_datawriter_datareader';

EXEC sys.sp_addrolemember @rolename = N'db_datareader',
@membername = N'usuarioParaAPIWebDataViz_datawriter_datareader';
