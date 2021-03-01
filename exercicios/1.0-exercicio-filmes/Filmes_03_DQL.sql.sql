-- DQL

USE Filmes;

SELECT * FROM Generos;

SELECT * FROM Filmes;

-- INNER JOIN
-- AS (ALIAS)
SELECT Filmes.idFilme, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes -- Tabela 1
INNER JOIN Generos -- Tabela 2
ON Filmes.idGenero = Generos.idGenero;

SELECT Filmes.idFilme, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes -- Tabela 1
LEFT JOIN Generos -- Tabela 2
ON Filmes.idGenero = Generos.idGenero;

SELECT Filmes.idFilme, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes -- Tabela 1
RIGHT JOIN Generos -- Tabela 2
ON Filmes.idGenero = Generos.idGenero;

SELECT Filmes.idFilme, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes -- Tabela 1
FULL OUTER JOIN Generos -- Tabela 2
ON Filmes.idGenero = Generos.idGenero;
