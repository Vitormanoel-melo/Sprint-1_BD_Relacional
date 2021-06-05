-- DQL

USE Gufi;
GO

SELECT * FROM presencas;
SELECT * FROM instituicoes;
SELECT * FROM tiposEventos;
SELECT * FROM eventos;
SELECT * FROM tiposUsuarios;
SELECT * FROM usuarios;

SELECT idUsuario, tituloTipoUsuario, nomeUsuario, email, senha FROM usuarios U
INNER JOIN tiposUsuarios T
ON U.idTipoUsuario = T.idTipoUsuario;

SELECT idEvento, tituloTipoEvento AS Tipo_evento, nomeFantasia AS [local],
nomeEvento, acessoLivre, dataEvento, descricao FROM eventos E
INNER JOIN tiposEventos T
ON E.idTipoEvento = T.idTipoEvento
INNER JOIN instituicoes I
ON E.idInstituicao = I.idInstituicao;

SELECT nomeFantasia AS [local], nomeUsuario, email, nomeEvento,
tituloTipoEvento AS tema, dataEvento FROM usuarios U
INNER JOIN presencas P
ON P.idUsuario = U.idUsuario
INNER JOIN eventos E
ON E.idEvento = P.idEvento
INNER JOIN tiposEventos TE
ON TE.idTipoEvento = E.idTipoEvento
INNER JOIN instituicoes I
ON I.idInstituicao = E.idInstituicao;

SELECT nomeUsuario, email FROM usuarios
WHERE email = 'adm@adm.com' AND senha = 'adm123';