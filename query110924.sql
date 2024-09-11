CREATE TABLE CURSO 
(
	idCurso INTEGER,
	nomeCurso VARCHAR(30),
	nroSemestre INTEGER,
	dtaFuncadacao DATE,
	CONSTRAINT pk_curso PRIMARY KEY (idCurso)
);

INSERT INTO CURSO VALUES(1, 'Ciência da Computação', 8, '01/03/1986'),
						(2, 'Direito', 8, '14/12/1975'),
						(3, 'Medicina', 12, '05/07/2000'),
						(4, 'Engenharia Elétrica', 10, '10/12/1996'),
						(5, 'Biologia', 8, '06/06/1993'),
						(6, 'Matemática', 8, '01/07/1968');
