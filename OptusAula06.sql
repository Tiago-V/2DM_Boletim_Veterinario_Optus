--- OPTUS 

--- Criar banco de dados
CREATE DATABASE optus;
GO

--- Usamos a base dados optus
USE optus;
GO

--- Criamos a tabela Usuario
CREATE TABLE usuario (
	idUsuario INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (20),
	Email VARCHAR (20),
	Senha VARCHAR (20),
	PermissaoADM BINARY,
);

--- Criamos a tabela Plataforma
CREATE TABLE plataforma (
	idPlataforma INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR (50),
	idUsuario INT FOREIGN KEY REFERENCES usuario (idUsuario),
);

--- Criamos a tabela Album
CREATE TABLE album (
	idAlbum INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR (50),
	idPlataforma INT FOREIGN KEY REFERENCES plataforma (idPlataforma),
);

--- Criamos a tabela Estilo
CREATE TABLE estilo (
	idEstilo INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR (50),
	idAlbum INT FOREIGN KEY REFERENCES album (idAlbum),
);