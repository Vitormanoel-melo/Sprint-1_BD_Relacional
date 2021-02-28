-- DML

USE Filmes;

INSERT INTO Generos (Nome)
VALUES		('Ação')
		   ,('Romance');

INSERT INTO Filmes (Titulo, IdGenero)
VALUES		('Rambo', 1)
		   ,('Vingadores', 1)
		   ,('Ghost', 2)
		   ,('Diario de uma paixão', 2);

UPDATE Generos
SET Nome = 'Aventura'
WHERE idGenero = 2;

DELETE FROM Filmes
WHERE idFilme = 3;
