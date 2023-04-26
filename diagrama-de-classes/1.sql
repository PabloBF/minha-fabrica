CREATE TABLE Funcionario (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	sobrenome VARCHAR(50) NOT NULL,
	nome_social VARCHAR(150),
	cpf CHAR(11),
	data_nascimento Date,
	endereco VARCHAR(255),
	telefone VARCHAR(15),
	email VARCHAR(50),
	email_corporativo VARCHAR(50),
	cargo INTEGER,
	senha VARCHAR(64) PASSWORD,
	data_registro TIMESTAMP,
	situacao INTEGER
)

CREATE TABLE Situacao (
	id SERIAL PRIMARY KEY,
	situacao VARCHAR(50)
)

CREATE TABLE Cargo (
	id SERIAL PRIMARY KEY,
	cargo VARCHAR(50)
)
