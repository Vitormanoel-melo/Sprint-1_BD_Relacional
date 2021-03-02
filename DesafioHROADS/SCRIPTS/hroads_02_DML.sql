USE SENAI_HROADS_TARDE;

INSERT INTO Classe (Nome)
VALUES		('Bárbaro')
		   ,('Cruzado')
		   ,('Caçadora')
		   ,('Monge')
		   ,('Necromante')
		   ,('Feiticeiro')
		   ,('Arcanista');


INSERT INTO TipoHabilidade (Descricao)
VALUES		('Ataque')
		   ,('Defesa')
		   ,('Cura')
		   ,('Magia');


INSERT INTO Habilidade (Nome, idTipohabilidade)
VALUES			('Lança Mortal', 1)
			   ,('Escudo Supremo', 2)
			   ,('Recuperar Vida', 3);


INSERT INTO ClasseHabilidade (idClasse, idHabilidade)
VALUES			(1, 1)
			   ,(1, 2)
			   ,(2, 2)
			   ,(3, 1)
			   ,(4, 3)
			   ,(4, 2)
			   ,(5, NULL)
			   ,(6, 3)
			   ,(7, NULL);

INSERT INTO Personagem (idClasse, Nome, MaxVida, MaxMana, DataAtualizacao, DataCriacao)
VALUES			(1, 'DeuBug', 100, 80, '02/03/2021', '18/01/2019')
			   ,(4, 'BitBug', 70, 100, '02/03/2021', '17/03/2016')
			   ,(7, 'Fer8', 75, 60, '02/03/2021', '18/03/2018');

-- Mudar nome do Personagem

UPDATE Personagem
SET Personagem.Nome = 'Fer7'
WHERE Personagem.idPersonagem = 3;

-- Mudar nome da classe

UPDATE Classe
SET Classe.Nome = 'Necromancer'
WHERE Classe.idClasse = 5;