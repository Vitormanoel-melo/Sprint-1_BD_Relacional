-- DML

USE Filmes;

INSERT INTO Generos (Nome)
VALUES		('Com�dia');

INSERT INTO Filmes (Titulo)
VALUES		('Homem-Aranha')
		   ,('Eu sou a Lenda')

UPDATE Generos
SET Nome = 'Aventura'
WHERE idGenero = 2;

DELETE FROM Filmes
WHERE idFilme = 3;
