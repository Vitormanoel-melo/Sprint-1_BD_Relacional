CREATE DATABASE Locadora;

USE Locadora;

CREATE TABLE Empresa
(
	idEmpresa	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(100) NOT NULL
);

CREATE TABLE Clientes
(
	idCliente	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL
	,CPF		VARCHAR(50) NOT NULL
);

CREATE TABLE Marcas
(
	idMarca		INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL
);

CREATE TABLE Modelos
(
	idModelo	INT PRIMARY KEY IDENTITY
	,idMarca	INT FOREIGN KEY REFERENCES Marcas(idMarca)
	,Descricao	VARCHAR(200)
);

CREATE TABLE Veiculos
(
	idVeiculo	INT PRIMARY KEY IDENTITY
	,idEmpresa	INT FOREIGN KEY REFERENCES Empresa(idEmpresa)
	,idModelo	INT FOREIGN KEY REFERENCES Modelos(idModelo)
	,Placa		VARCHAR(20) NOT NULL
);

CREATE TABLE Alugueis
(
	idAluguel		INT PRIMARY KEY IDENTITY
	,idVeiculo		INT FOREIGN KEY REFERENCES Veiculos(idVeiculo)
	,idCliente		INT FOREIGN KEY REFERENCES Clientes(idCliente)
	,DataAluguel	SMALLDATETIME NOT NULL
);