-- Cria tabela curso
CREATE TABLE CURSO 
(
	idCurso INTEGER,
	nomeCurso VARCHAR(30),
	nroSemestre INTEGER,
	dtaFuncadacao DATE,
	
	CONSTRAINT pk_curso PRIMARY KEY (idCurso)
);

-- Insere 6 valores em Curso
INSERT INTO CURSO VALUES(1, 'Ciência da Computação', 8, '01/03/1986'),
						(2, 'Direito', 8, '14/12/1975'),
						(3, 'Medicina', 12, '05/07/2000'),
						(4, 'Engenharia Elétrica', 10, '10/12/1996'),
						(5, 'Biologia', 8, '06/06/1993'),
						(6, 'Matemática', 8, '01/07/1968');

-- Cria tabela aluno
CREATE TABLE ALUNO
(
	prontuario VARCHAR(30),
	nome VARCHAR(30),
	dtaNasc DATE,
	sexo char(1),
	idCurso INTEGER,
	
	CONSTRAINT pk_aluno PRIMARY KEY(prontuario),
	CONSTRAINT fk_aluno_curso FOREIGN KEY(idCurso) REFERENCES CURSO	-- On Update/Delete Cascade
);

-- Insere 10 valores em Aluno
INSERT INTO ALUNO VALUES('11aa', 'Paulo', '1986-07-01', 'M', 1),
						('11bb', 'Ana', '1990-07-08', 'F', 5),
						('11cc', 'Júlia', '1980-05-08', 'M', 3),
						('11dd', 'Carlos', '1983-11-10', 'M', 2),
						('11ee', 'Gabriele', '1990-05-08', 'F', 3),
						('11ff', 'Antônio', '1955-06-15', 'M', 4),
						('11gg', 'Ana', '1975-12-08', 'F', 5),
						('11hh', 'Mara', '1970-07-07', 'F', 1),
						('11ii', 'Roberto', '1956-07-01', 'M', 3),
						('11jj', 'Carmen', '1950-02-03', 'F', 2);

-- Insere o Pedro em aluno
INSERT INTO ALUNO VALUES('11kk', 'Pedro Robert', '2000-01-11', 'M', 3);

-- Tenta deletar o curso de direito, não vai dar certo porque ele esta sendo referenciado na tabela Aluno
-- sem colocar o On Delete Cascade na criacao da tabela ele não vai apagar.
DELETE FROM CURSO 
	WHERE idCurso = 2;

-- Deleta todos os alunos que fazem direito
DELETE FROM ALUNO
	WHERE idCurso = 2;
						
-- Deleta o curso de direito						
DELETE FROM CURSO 
	WHERE idCurso = 2;

-- Tenta mudar o Id do curso 'Medicina' para 10 mas não consegue porque ele é referenciado na tabela Aluno
-- sem colocar o On Update cascade na criacao da tabela ele não atualiza os dados.
UPDATE CURSO SET idCurso = 10
	WHERE idCurso = 3;

-- Atualiza o nome da aluna Ana com prontuario 11gg
UPDATE ALUNO SET nome = 'Ana Paula'
	WHERE prontuario = '11gg';
----------------------------------------------------------------

-- Exercícios Arquivo cidadesBrasil.sql
UPDATE cidadesBrasil SET populacao = 900000
	WHERE nomeCidade = 'Campo Grande';
	
UPDATE cidadesBrasil SET idhm = 0.81
	WHERE nomeCidade = 'Palmas';
	
UPDATE cidadesBrasil SET idhm = 0.77, escolarizacao = 0.96 
	WHERE nomeCidade = 'Salvador';
	
DELETE FROM cidadesBrasil 
	WHERE idhm < 0.6;
	
DELETE FROM cidadesBrasil
	WHERE populacao < 20000;
	
DELETE FROM cidadesBrasil
	WHERE idhm < 0.7 AND regiao = 'Sudeste';
