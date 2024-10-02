CREATE TABLE EMPREGADO(idEmp integer PRIMARY KEY, pNome character varying (20) NOT NULL, sNome character varying(20) NOT NULL, idade integer, salario real NOT NULL, cargo character varying(30) NOT NULL);

--drop table empregado

INSERT INTO empregado VALUES (1,'Carlos','Alberto',24,2500,'Técnico em Segurança');
INSERT INTO empregado VALUES (2,'Pedro','Augusto',32,3500,'Analista de Sistemas');
INSERT INTO empregado VALUES (3,'Mara','Antonia',27,1200,'Secretária');
INSERT INTO empregado VALUES (4,'Derci','Gonçalves',56,6500,'Gerente');
INSERT INTO empregado VALUES (5,'Pedro','Bueno',28,1500,'Estagiário');
INSERT INTO empregado VALUES (6,'Edson','Arantes',60,7500,'Gerente');
INSERT INTO empregado VALUES (7,'Odete','Roitman',54,2000,'Técnico em Segurança');
INSERT INTO empregado VALUES (8,'Antonio','Da Lua',38,2500,'Analista de Sistemas');
INSERT INTO empregado VALUES (9,'Sassa','Mutema',55,3000,'Vendedor');
INSERT INTO empregado VALUES (10,'José','Silvério',42,2800,'Vendedor');
INSERT INTO empregado VALUES (11,'Gabriel','Oliveira',24,2500,'Técnico em Segurança');
INSERT INTO empregado VALUES (12,'Flávia','Camargo',29,4200,'Analista de Sistemas');
INSERT INTO empregado VALUES (13,'Marina','Delbonis',20,1000,'Secretária');
INSERT INTO empregado VALUES (14,'Paulo','Roberto',33,1500,'Vendedor');
INSERT INTO empregado VALUES (15,'José','Carlos da Silva',27,2900,'Analista de Sistemas');
INSERT INTO empregado VALUES (16,'Rúbia','Miranda',29,3500,'Administrador');
INSERT INTO empregado VALUES (17,'Roberto','Andrade Silva',35,3300,'Vendedor');
INSERT INTO empregado VALUES (18,'Ana','Julia',31,2900,'Secretária');
INSERT INTO empregado VALUES (19,'Pedro','Antonio',41,3500,'Administrador');
INSERT INTO empregado VALUES (20,'Ana','Mara',22,2200,'Psicóloga');
INSERT INTO empregado VALUES (21,'João','Augusto',44,5500,'Gerente');

select * from empregado;

-- Querys da aula

SELECT pnome FROM empregado
	WHERE pnome LIKE '_a%';
	
-- Group By
-- Usado quando tem valores que se repetem.
SELECT cargo, avg(salario) FROM empregado
	GROUP BY cargo;
	
SELECT max(idade) AS "Idade do empregado mais velho", min(idade) FROM empregado;

-- Quantidade de empregados que ganham mais de 3000
SELECT count(*) FROM empregado
	WHERE salario > 3000;
	
SELECT count(*) AS "Quantidade de Gerentes" FROM empregado
	WHERE cargo = 'Gerente';
	
SELECT sum(salario) AS "Soma salarial" FROM empregado;

------------------Exemplos----------------------
SELECT * FROM empregado;
SELECT count(*) FROM empregado;

SELECT cargo, count(*) FROM empregado
	GROUP BY cargo
	ORDER BY count(*) DESC;
	
SELECT cargo, avg(salario) FROM empregado
	GROUP BY cargo;

SELECT cargo, avg(salario) FROM empregado
	GROUP BY cargo;
	
SELECT cargo, sum(salario) FROM empregado
	GROUP BY cargo
	HAVING sum(salario) > 10000;
	
SELECT cargo, max(salario) AS "Maior salário", 
			  min(salario) AS "Menor Salário" FROM empregado
			  WHERE cargo <> 'Gerente'
			  GROUP BY cargo
			  HAVING max(salario) > 2000 AND min(salario) < 2500;
			  
-- Sem usar o where

SELECT cargo, max(salario) AS "Maior salário", 
			  min(salario) AS "Menor Salário" FROM empregado
			  GROUP BY cargo
			  HAVING  cargo <> 'Gerente' AND max (salario) > 2000 AND min(salario) < 2500;
			  
-- Exercícios
