--DQL
USE SPMed_Group;
GO

-- Mostrou a quantidade de usu�rios ap�s realizar a importa��o do banco de dados
SELECT COUNT(idUsuario) AS QtdUsuarios FROM usuarios;
GO


-- O m�dico poder� ver os agendamentos (consultas) associados a ele
SELECT nome AS NomeMedico, dataConsulta, CONVERT(VARCHAR(5), horaConsulta) AS HorarioConsulta, descricao FROM medicos
INNER JOIN consultas
ON medicos.idMedico = consultas.idMedico
WHERE medicos.idMedico = 1;
GO


-- O paciente poder� visualizar suas pr�prias consultas;
SELECT nome AS NomePaciente, dataConsulta, CONVERT(VARCHAR(5), horaConsulta) AS HorarioConsulta, descricao FROM pacientes
INNER JOIN consultas
ON pacientes.idPaciente = consultas.idPaciente
WHERE pacientes.idPaciente = 4;
GO


-- Converteu a data de nascimento do usu�rio para o formato (mm-dd-yyyy) na exibi��o
SELECT nome ,CONVERT (VARCHAR(10), dataNascimento, 101) AS DataNascimento FROM pacientes
GO


-- Criou uma fun��o para retornar a quantidade de m�dicos de uma determinada especialidade
CREATE FUNCTION qtdMedicos(@idEspecialidade INT)
RETURNS TABLE
AS
RETURN(
	SELECT nome FROM medicos
	WHERE medicos.idEspecialidade = @idEspecialidade
)
GO

SELECT COUNT(nome) AS QtdMedicos FROM QtdMedicos(2);
GO
