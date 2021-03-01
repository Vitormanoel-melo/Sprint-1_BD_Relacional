USE Locadora;

SELECT * FROM Empresa;

SELECT * FROM Clientes;

SELECT * FROM Alugueis;

SELECT * FROM Modelos;

SELECT * FROM Marcas;

SELECT * FROM Veiculos;

-- listar todos os alugueis mostrando as datas de início e fim,
-- o nome do cliente que alugou e nome do modelo do carro

SELECT Clientes.Nome AS Nome_Cliente, Alugueis.DataInicio, 
Alugueis.DataFim, Modelos.Descricao AS Modelo_Carro FROM Alugueis

INNER JOIN Clientes
ON Alugueis.idCliente = Clientes.idCliente

INNER JOIN Veiculos
ON Veiculos.idVeiculo = Alugueis.idVeiculo

INNER JOIN Modelos
ON Veiculos.idModelo = Modelos.idModelo;


-- listar os alugueis de um determinado cliente mostrando seu nome,
-- as datas de início e fim e o nome do modelo do carro


SELECT Clientes.Nome AS Nome_Cliente, Alugueis.DataInicio, 
Alugueis.DataFim, Modelos.Descricao AS Modelo_Carro FROM Alugueis

INNER JOIN Clientes
ON Alugueis.idCliente = Clientes.idCliente

INNER JOIN Veiculos
ON Veiculos.idVeiculo = Alugueis.idVeiculo

INNER JOIN Modelos
ON Veiculos.idModelo = Modelos.idModelo
WHERE Clientes.idCliente = 1;