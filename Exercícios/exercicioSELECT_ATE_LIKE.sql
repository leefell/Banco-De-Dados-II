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
