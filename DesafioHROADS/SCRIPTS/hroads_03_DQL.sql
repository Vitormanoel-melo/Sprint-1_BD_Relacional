USE SENAI_HROADS_TARDE;


SELECT * FROM Personagem; -- 6


SELECT * FROM Classe; -- 7


SELECT Nome AS Classe FROM Classe; -- 8


SELECT COUNT (idHabilidade) AS Qtd_Habilidades FROM Habilidade; -- 9


SELECT idHabilidade FROM Habilidade ORDER BY idHabilidade ASC; -- 10


SELECT idTipoHabilidade, Descricao AS Tipo_Habilidade FROM TipoHabilidade; -- 11


SELECT Habilidade.Nome AS Habilidade, TipoHabilidade.Descricao AS Tipo_Habilidade FROM Habilidade -- 12
INNER JOIN TipoHabilidade
ON Habilidade.idTipohabilidade = TipoHabilidade.idTipoHabilidade; -- 13


SELECT Personagem.Nome AS Personagem, Personagem.MaxVida,
Personagem.Nome, Personagem.MaxMana, Personagem.DataAtualizacao, -- 14
Personagem.DataCriacao, Classe.Nome AS Classe FROM Classe
INNER JOIN Personagem
ON Classe.idClasse = Personagem.idClasse;


SELECT Personagem.Nome AS Personagem, Personagem.MaxVida,
Personagem.Nome, Personagem.MaxMana, Personagem.DataAtualizacao, -- 15
Personagem.DataCriacao, Classe.Nome AS Classe FROM Classe
LEFT JOIN Personagem
ON Classe.idClasse = Personagem.idClasse;


SELECT Classe.Nome AS Classe, Habilidade.Nome AS Habilidade FROM Classe -- 16
INNER JOIN ClasseHabilidade
ON Classe.idClasse = ClasseHabilidade.idClasse
LEFT JOIN Habilidade
ON Habilidade.idHabilidade = ClasseHabilidade.idHabilidade;


SELECT Habilidade.Nome AS Habilidade, Classe.Nome AS Classe FROM Classe -- 17
INNER JOIN ClasseHabilidade
ON Classe.idClasse = ClasseHabilidade.idClasse
INNER JOIN Habilidade
ON Habilidade.idHabilidade = ClasseHabilidade.idHabilidade;


SELECT Habilidade.Nome AS Habilidade,  Classe.Nome AS Classe FROM Classe -- 18
FULL OUTER JOIN ClasseHabilidade
ON Classe.idClasse = ClasseHabilidade.idClasse
FULL OUTER JOIN Habilidade
ON Habilidade.idHabilidade = ClasseHabilidade.idHabilidade;