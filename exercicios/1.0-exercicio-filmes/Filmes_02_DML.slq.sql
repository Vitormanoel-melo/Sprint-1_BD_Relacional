-- DML

USE Filmes;

INSERT INTO Generos (Nome)
VALUES		('Comédia');

INSERT INTO Filmes (Titulo)
VALUES		('Homem-Aranha')
		   ,('Eu sou a Lenda');

INSERT INTO Usuarios(email, senha, permissao) 
VALUES		('vitor@gmail.com', '123', 'comum')
		   ,('adm@adm.com', '123', 'administrador');

UPDATE Generos
SET Nome = 'Aventura'
WHERE idGenero = 2;

DELETE FROM Filmes
WHERE idFilme = 3;
