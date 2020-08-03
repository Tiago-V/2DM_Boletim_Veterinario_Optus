/* Criamos o banco */
CREATE DATABASE boletim;
GO

/* Usamos o banco efetivamente */
USE boletim;
GO

/* Excluir o banco */
/* DROP DATABASE boletim; */

/* Criamos a tabela Aluno */
CREATE TABLE aluno (
	idAluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (100) NOT NULL,
	Ra VARCHAR (20) ,
	Idade INT
);

/* Criamos a tabela Materia */
CREATE TABLE materia(
	idMateria INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR (50) NOT NULL,
);

/* Criamos a tabela Trabalho */
CREATE TABLE trabalho(
	idTrabalho INT PRIMARY KEY IDENTITY NOT NULL,
	Nota DECIMAL,

	-- Chamamos nossas chaves estrangeiras (FOREIGN KEYS)
	idAluno INT FOREIGN KEY REFERENCES aluno (idAluno),
	idMateria INT FOREIGN KEY REFERENCES materia (idMateria),
);

/* Comandos de ajustes/alterações */
/* Incluir coluna esquecida: DataEntrega */
ALTER TABLE trabalho ADD DataEntrega DATETIME;

/* Criar coluna de teste para excluí-la depois */
ALTER TABLE trabalho ADD teste INT;

/* Excluímos a colubna */
ALTER TABLE trabalho DROP COLUMN teste;