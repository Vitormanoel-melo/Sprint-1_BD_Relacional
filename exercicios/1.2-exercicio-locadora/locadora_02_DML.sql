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
VALUES		('Onix', 1)
		   ,('Fiesta', 2)
		   ,('Argo', 1);

INSERT INTO Veiculos (idEmpresa, idModelo, Placa)
VALUES		(1, 2, 8894)
		   ,(1, 1, 9494)
		   ,(2, 1, 5310);

INSERT INTO Alugueis (idCliente, idVeiculo, DataInicio, DataFim)
VALUES		(1, 1, '10/05/2020', '25/10/2020')
		   ,(2, 2, '08/06/2020', '10/02/2021')
		   ,(2, 3, '07/01/2021', '31/03/2021');

UPDATE Alugueis
SET idCliente = 1, idVeiculo = 3, DataInicio = '26/02/2020', DataFim = '31/03/2020'
WHERE idAluguel = 1;

DELETE FROM Alugueis
WHERE idAluguel = 3;