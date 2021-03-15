--DQL
USE SPMed_Group;
GO

-- Mostrou a quantidade de usuários após realizar a importação do banco de dados
SELECT COUNT(idUsuario) AS QtdUsuarios FROM usuarios;
GO


-- O médico poderá ver os agendamentos (consultas) associados a ele
SELECT nome AS NomeMedico, dataConsulta, CONVERT(VARCHAR(5), horaConsulta) AS HorarioConsulta, descricao FROM medicos
INNER JOIN consultas
ON medicos.idMedico = consultas.idMedico
WHERE medicos.idMedico = 1;
GO


-- O paciente poderá visualizar suas próprias consultas;
SELECT nome AS NomePaciente, dataConsulta, CONVERT(VARCHAR(5), horaConsulta) AS HorarioConsulta, descricao FROM pacientes
INNER JOIN consultas
ON pacientes.idPaciente = consultas.idPaciente
WHERE pacientes.idPaciente = 4;
GO


-- Converteu a data de nascimento do usuário para o formato (mm-dd-yyyy) na exibição
SELECT nome ,CONVERT (VARCHAR(10), dataNascimento, 101) AS DataNascimento FROM pacientes
GO


-- Criou uma função para retornar a quantidade de médicos de uma determinada especialidade
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
