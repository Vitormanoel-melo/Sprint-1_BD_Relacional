USE Gufi;
GO

INSERT INTO tiposUsuarios(tituloTipoUsuario)
VALUES		('Administrador')
		   ,('Comum');
GO

INSERT INTO usuarios(idTipoUsuario, nomeUsuario, email, senha)
VALUES		(1, 'Administrador', 'adm@adm.com', 'adm123')
		   ,(2, 'Caique', 'caique@email.com', 'caique123' )
		   ,(2, 'Saulo', 'saulo@email.com', 'saulo123');
GO

INSERT INTO instituicoes(CNPJ, nomeFantasia, endereco)
VALUES		('99999999999999', 'Escola SENAI de Informática', 'Al. Barão de Limeira, 538');
GO

INSERT INTO tiposEventos(tituloTipoEvento)
VALUES		('C#')
		   ,('ReactJS')
		   ,('SQL');

INSERT INTO eventos(idTipoEvento, idInstituicao, nomeEvento, acessoLivre, dataEvento, descricao)
VALUES		(1, 1, 'POO', 1, '07/04/2021', 'Conceitos sobre os pilares da programação orientada a objetos')
		   ,(2, 1, 'Ciclo de vida', 0, '08/04/2021', 'Como utilizar os ciclos de vida com a biblioteca ReactJs')
		   ,(3, 1, 'Introdução a SQL', 1, '09/04/2021', 'Comandos básicos utilizando SQL Server');
GO

INSERT INTO presencas(idUsuario, idEvento, situacao)
VALUES		(2, 2, 'não corfirmada')
		   ,(2, 3, 'confirmada')
		   ,(3, 1, 'confirmada');
GO