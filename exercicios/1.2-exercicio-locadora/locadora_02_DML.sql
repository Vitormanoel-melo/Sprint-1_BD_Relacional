USE Locadora;

INSERT INTO Empresa (Nome)
VALUES		('Movida')
		   ,('Localiza');

INSERT INTO Clientes (Nome, CPF)
VALUES		('Vitor', 15698742300)
		   ,('Chris', 45489902033)

INSERT INTO Marcas (Nome)
VALUES		('Ford')
		   ,('GM')
		   ,('Fiat');

INSERT INTO Modelos (Descricao, idMarca)
VALUES		('Onix', 7)
		   ,('Fiesta', 7)
		   ,('Argo', 8);

INSERT INTO Veiculos (idEmpresa, idModelo, Placa)
VALUES		(5, 9, 8894)
		   ,(5, 10, 9494)
		   ,(6, 10, 5310);

INSERT INTO Alugueis (idCliente, idVeiculo, DataAluguel)
VALUES		(6, 8, '10/05/2011')
		   ,(7, 9, '08/06/2030')
		   ,(6, 10, '07/10/2006');

UPDATE Alugueis
SET idCliente = 7, idVeiculo = 8, DataAluguel = '10/10/2006'
WHERE idAluguel = 8;

DELETE FROM Marcas
WHERE idMarca = 9;