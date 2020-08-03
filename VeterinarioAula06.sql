--- Modelagem 1 Veterinário

--- Banco de dados veterinário 
CREATE DATABASE veterinario;
GO

--- Usar banco de dados veterinário
USE veterinario;
GO

--- Criamos tabela Clinica
CREATE TABLE clinica (
	idClinica INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR (50),
);

--- Criamos tabela Endereço
CREATE TABLE endereco (
	idEnreco INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR (50),
	idClinica INT FOREIGN KEY REFERENCES clinica (idClinica),
);

--- Criamos tabela Veterinario
CREATE TABLE veterinario (
	idVeterinario INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR (50),
	idClinica INT FOREIGN KEY REFERENCES clinica (idClinica),
);

--- Criamos a tabela Pet
CREATE TABLE pet (
	idPet INT IDENTITY PRIMARY KEY NOT NULL,

	Nome VARCHAR (20),
	Nasci VARCHAR (20),
	TipoPet VARCHAR (20),

	idClinica INT FOREIGN KEY REFERENCES clinica (idClinica),
	idVeterinario INT FOREIGN KEY REFERENCES veterinario (idVeterinario),
);

--- Criamos tabela Dono
CREATE TABLE dono (
	idDono INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR (50),
	idPet INT FOREIGN KEY REFERENCES pet (idPet),
);

--- Criamos tabela Raça
CREATE TABLE raca (
	idRaca INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR (50),
	idPet INT FOREIGN KEY REFERENCES pet (idPet),
);