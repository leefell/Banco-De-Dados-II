-- 1 
SELECT nome, especialidade FROM medico m
	INNER JOIN especialidadeMedico e
	ON m.crm = e.crm
	ORDER BY nome ASC;
	
-- 2 
SELECT m.nome AS nome_medico, p.nome AS nome_paciente, c.dtaConsulta 
	FROM medico m
	INNER JOIN consultas c ON m.crm = c.crm
	INNER JOIN paciente p ON c.cpf = p.cpf
	ORDER BY c.dtaConsulta ASC;
	
-- 3 
SELECT m.nome AS nome_medico, e.especialidade, c.dtaConsulta
FROM medico m
INNER JOIN consultas c ON m.crm = c.crm
INNER JOIN especialidadeMedico e ON e.crm = m.crm
WHERE e.especialidade = 'Cardiologista'
AND c.dtaConsulta > '10/07/2024'
ORDER BY c.dtaConsulta ASC;

-- 4
SELECT m.nome AS nome_medico, p.nome AS nome_paciente, e.especialidade, c.dtaConsulta
FROM medico m
INNER JOIN consultas c ON m.crm = c.crm
INNER JOIN paciente p ON p.cpf = c.cpf 
INNER JOIN especialidadeMedico e ON e.crm = m.crm
WHERE e.especialidade = 'Cardiologista'
AND c.dtaConsulta > '10/07/2024'
ORDER BY c.dtaConsulta ASC;

-- 5
SELECT p.nome AS nome_paciente, COUNT(c.cpf) AS quantidade_consultas
FROM paciente p
INNER JOIN consultas c ON p.cpf = c.cpf
GROUP BY p.nome
HAVING COUNT(c.cpf) > 1;

-- Script Locadora

-- 6
SELECT a.nome AS nome_ator, COUNT(a.idAtor) AS quantidade_filmes
FROM Ator a
INNER JOIN atorEstrelaFilme e ON e.idator = a.idator
GROUP BY a.nome;

-- 7
SELECT a.nome AS nome_ator, f.nome AS nome_filme
FROM Ator a
INNER JOIN atorEstrelaFilme e ON e.idator = a.idator
INNER JOIN Filme f ON e.codfilme = f.codfilme
ORDER BY a.nome ASC;

-- 8 
SELECT f.nome AS nome_filme, COUNT(f.codfilme) AS vezes_alugado
FROM Filme f
INNER JOIN clienteAlugaExemplarFilme c ON c.codfilme = f.codfilme
WHERE f.genero = 'Comédia'
GROUP BY f.nome
ORDER BY vezes_alugado ASC;

-- Apenas a quantidade de vezes que um filme de comédia foi alugado
SELECT COUNT(f.codFilme) AS vezes_alugado
FROM Filme f
INNER JOIN clientealugaexemplarfilme c on c.codfilme = f.codfilme
WHERE f.genero = 'Comédia';

-- 9 
SELECT c.nome AS nome_cliente, t.telefone AS telefone_cliente
FROM Cliente c
INNER JOIN telefoneCliente t ON t.codcliente = c.codcliente;

-- 10
SELECT c.nome AS nome_Cliente, f.nome AS nome_Filme
FROM Cliente c
INNER JOIN clientealugaexemplarfilme e ON e.codcliente = c.codcliente
INNER JOIN Filme f ON f.codfilme = e.codfilme
ORDER BY nome_Cliente ASC;
