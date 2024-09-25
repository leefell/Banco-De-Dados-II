/*CREATE TABLE EMPREGADO (
    idEmp INTEGER PRIMARY KEY,
    pNome CHARACTER VARYING (20) NOT NULL,
    sNome CHARACTER VARYING (20) NOT NULL,
    idade INTEGER,
    salario REAL NOT NULL,
    cargo CHARACTER VARYING (30) NOT NULL
);
*/

--DROP TABLE EMPREGADO;

/*
INSERT INTO EMPREGADO VALUES (1, 'Carlos', 'Alberto', 24, 2500, 'Técnico em Segurança');
INSERT INTO EMPREGADO VALUES (2, 'Pedro', 'Augusto', 32, 3500, 'Analista de Sistemas');
INSERT INTO EMPREGADO VALUES (3, 'Mara', 'Antonia', 27, 1200, 'Secretária');
INSERT INTO EMPREGADO VALUES (4, 'Derci', 'Gonçalves', 56, 6500, 'Gerente');
INSERT INTO EMPREGADO VALUES (5, 'Pedro', 'Bueno', 28, 1500, 'Estagiário');
INSERT INTO EMPREGADO VALUES (6, 'Edson', 'Arantes', 60, 7500, 'Gerente');
INSERT INTO EMPREGADO VALUES (7, 'Odete', 'Roitman', 54, 2000, 'Técnico em Segurança');
INSERT INTO EMPREGADO VALUES (8, 'Antonio', 'Da Lua', 38, 2500, 'Analista de Sistemas');
INSERT INTO EMPREGADO VALUES (9, 'Sassa', 'Mutema', 55, 3000, 'Vendedor');
INSERT INTO EMPREGADO VALUES (10, 'José', 'Silvério', 42, 2800, 'Vendedor');
INSERT INTO EMPREGADO VALUES (11, 'Gabriel', 'Oliveira', 24, 2500, 'Técnico em Segurança');
INSERT INTO EMPREGADO VALUES (12, 'Flávia', 'Camargo', 29, 4200, 'Analista de Sistemas');
INSERT INTO EMPREGADO VALUES (13, 'Marina', 'Delbonis', 20, 1000, 'Secretária');
INSERT INTO EMPREGADO VALUES (14, 'Paulo', 'Roberto', 33, 1500, 'Vendedor');
INSERT INTO EMPREGADO VALUES (15, 'José', 'Carlos da Silva', 27, 2900, 'Analista de Sistemas');
INSERT INTO EMPREGADO VALUES (16, 'Rúbia', 'Miranda', 29, 3500, 'Administrador');
INSERT INTO EMPREGADO VALUES (17, 'Roberto', 'Andrade Silva', 35, 3300, 'Vendedor');
INSERT INTO EMPREGADO VALUES (18, 'Ana', 'Julia', 31, 2900, 'Secretária');
INSERT INTO EMPREGADO VALUES (19, 'Pedro', 'Antonio', 41, 3500, 'Administrador');
INSERT INTO EMPREGADO VALUES (20, 'Ana', 'Mara', 22, 2200, 'Psicóloga');
INSERT INTO EMPREGADO VALUES (21, 'João', 'Augusto', 44, 5500, 'Gerente');
*/

SELECT * FROM EMPREGADO;

SELECT pNome, cargo FROM EMPREGADO;

SELECT pNome, sNome, salario FROM EMPREGADO;

SELECT pNome, idade FROM EMPREGADO 
WHERE idade = 32;

SELECT pNome, salario FROM EMPREGADO 
WHERE salario > 3000
ORDER BY salario;

SELECT pNome FROM EMPREGADO
WHERE pNome >= 'Carlos'
ORDER BY pNome;

SELECT pNome, cargo FROM EMPREGADO
WHERE cargo <> 'Vendedor'
ORDER BY pNome;

-- DISTINCT (não ocorrem repetições)
SELECT pNome FROM EMPREGADO ORDER BY pNome;

SELECT DISTINCT (pNome) FROM EMPREGADO ORDER BY pNome;

SELECT DISTINCT (cargo, idade) FROM EMPREGADO ORDER BY (cargo, idade);
SELECT DISTINCT cargo, idade FROM EMPREGADO ORDER BY cargo;

-- Exemplos
SELECT pNome, sNome, idade FROM EMPREGADO WHERE idade > 30;
SELECT pNome, cargo, salario FROM EMPREGADO WHERE cargo <> 'Vendedor';
SELECT DISTINCT cargo FROM EMPREGADO;

-- Or
SELECT pNome, cargo FROM empregado
	WHERE cargo = 'Secretária' OR cargo = 'Gerente';
	
SELECT pNome, cargo, salario from empregado
	WHERE cargo = 'Vendedor' OR salario > 3000;
	
-- AND
SELECT pnome, cargo, salario FROM empregado
	WHERE cargo = 'Analista de Sistemas' AND salario > 4000;
	
SELECT pnome FROM EMPREGADO
	WHERE cargo = 'Gerente' AND pnome = 'Pedro';
	
-- In (where cargo IN('coluna1', 'coluna2', 'coluna3'))
SELECT pnome, cargo FROM empregado
	WHERE cargo IN('Gerente', 'Estagiário', 'Vendedor');
	
SELECT pnome, cargo, salario FROM empregado
	WHERE cargo IN('Analista de Sistemas', 'Técnico de Segurança')
	AND salario > 2000;

-- NOT(nega uma condicao no IN)
SELECT * FROM empregado 
	WHERE cargo NOT IN('Gerente', 'Vendedor');

-- BETWEEN
SELECT pnome, salario FROM empregado 
	WHERE salario BETWEEN 2500 AND 4000
	ORDER BY salario;
	
SELECT pnome, salario FROM empregado
	WHERE salario >= 2500 AND salario <= 4000
	ORDER BY salario; -- mesma consulta que a anterior
	
-- ORDER BY [ASC|DESC]
SELECT pnome, salario FROM empregado
	WHERE salario >= 2500 AND salario <= 4000
	ORDER BY salario DESC;
	
SELECT pnome, salario, cargo FROM empregado
	WHERE salario < 2500
	ORDER BY salario DESC;                                                             
	
-- AVG | AS
SELECT avg(salario) AS "Média dos salários", sum(salario) AS "FOLHA SALARIAL" FROM empregado;

-- LIKE (where coluna LIKE 'StringASerComparada')
-- % significa qualquer sequencia de 0 ou mais caracteres
-- _ significa qualquer caractere(mas apenas um)
-- nome LIKE 'A_%S'

SELECT * FROM EMPREGADO WHERE pNome LIKE 'A%'; 
-- completar depois
	
