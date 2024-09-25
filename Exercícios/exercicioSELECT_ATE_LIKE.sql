-- 1 
SELECT * FROM REMEDIO;

-- 2
SELECT nomeRemedio, preco FROM REMEDIO;

-- 3
SELECT nomeRemedio, preco, laboratorio FROM REMEDIO;
	WHERE preco > 10;
	
-- 4
SELECT * FROM REMEDIO
	WHERE laboratorio = 'ACHE' 
	OR laboratorio = 'FARMASA' OR laboratorio = 'NOVARTIS';

SELECT * FROM REMEDIO
	WHERE laboratorio IN('ACHE', 'FARMASA', 'NOVARTIS');
	
-- 5
SELECT nomeRemedio, laboratorio, preco FROM REMEDIO
	ORDER BY preco ASC;
	
-- 6
SELECT nomeRemedio AS "Nome do remédio", descricao, preco AS "preço" FROM REMEDIO
	ORDER BY preco DESC; 
	
-- 7 
SELECT nomeRemedio, preco FROM REMEDIO
	WHERE preco BETWEEN 5 AND 15;
	
-- 8
UPDATE REMEDIO SET preco = preco * 1.05;

-- 9 
DELETE FROM REMEDIO 
	WHERE preco > 20 OR laboratorio = 'FARMASA';
	
-- 10

CREATE TABLE PAIS(nome VARCHAR (50), 
				  capital VARCHAR (50) NOT NULL,
				  populacao real, 
				  idh real, 
				  continente varchar (30), 
				  CONSTRAINT PK_PAIS PRIMARY KEY (nome));
				  
-- 10
SELECT nome, capital FROM PAIS
	WHERE nome LIKE '_i%' OR nome LIKE '%i%';

-- 11
SELECT nome FROM PAIS
	WHERE nome LIKE '%a%a';
	
-- 12
SELECT nome FROM PAIS
	WHERE nome LIKE '%r' 
	OR populacao < 10 
	OR continente = 'Ásia'
	ORDER BY NOME ASC;

-- 13
SELECT nome FROM PAIS
	WHERE nome LIKE '%i%' AND idh > 0.7 AND populacao > 20; 
	
-- 14 
SELECT nome FROM PAIS
	WHERE nome LIKE '%'
	OR idh BETWEEN 0.4 AND 0.7
	ORDER BY idh ASC;
	
-- 15
SELECT nome, continente, populacao FROM PAIS
	WHERE n
