-- 1
SELECT v.nome_vendedor, COUNT(p.codigo_vendedor)
	FROM vendedor v RIGHT JOIN pedido p
	ON v.codigo_vendedor = p.codigo_vendedor
	GROUP BY v.nome_vendedor;
	
-- 2
SELECT m.nome_marin, COUNT(r.id_marin) AS reservas
	FROM marinheiros m LEFT JOIN reservas r
	ON m.id_marin = r.id_marin
	GROUP BY m.nome_marin;
	
-- 3
SELECT b.nome_barco
	FROM reservas r RIGHT JOIN barcos b
	ON r.id_barco = b.id_barco  
	WHERE r.id_barco IS NULL;
	
-- 4
CREATE TABLE departamento 
(
	id_departamento INTEGER,
	nome_departamento VARCHAR (255) NOT NULL,
	
	CONSTRAINT PK_DEP PRIMARY  KEY(id_departamento)
);
		
CREATE TABLE empregado 
(
	id_empregado INTEGER,
	nome_empregado VARCHAR (255),
	id_departamento INTEGER,
    
	CONSTRAINT PK_EMP  PRIMARY  KEY  (id_empregado),
	CONSTRAINT FK_EMP_DEP FOREIGN KEY (ID_DEPARTAMENTO) REFERENCES departamento	
);

-- 5
INSERT INTO DEPARTAMENTO VALUES
	(1, 'Sales'),
	(2, 'Marketing'),
	(3, 'HR'),
	(4, 'IT'),
	(5, 'Production');
	
INSERT INTO EMPREGADO VALUES
	(1, 'Bette Nicholson', 1),
	(2, 'Christian Gable', 1),
	(3, 'Joe Swank', 2),
	(4, 'Fred Costner', 3),
	(5, 'Sandra Kilmer', 4),
	(6, 'Julia Mcqueen', null);
	
-- 6
SELECT d.nome_departamento
	FROM departamento d LEFT JOIN empregado e
	ON d.id_departamento = e.id_departamento
	WHERE e.id_departamento IS NULL;
	
-- 7
SELECT e.nome_empregado, d.nome_departamento
	FROM empregado e LEFT JOIN departamento d
	ON e.id_departamento = d.id_departamento
	WHERE d.id_departamento IS NULL;
	
-- 8 
SELECT d.nome_departamento, e.nome_empregado
	FROM departamento d FULL JOIN empregado e
	ON e.id_departamento = d.id_departamento
	WHERE d.id_departamento IS NULL OR e.id_departamento IS NULL;
