--1x1

CREATE TABLE GERENTE
(
	cpf_gerente INTEGER NOT NULL,
	nome_gerente VARCHAR(50) NOT NULL,
	CONSTRAINT pk_gerente PRIMARY KEY(cpf_gerente)
);

INSERT INTO GERENTE VALUES(123456, 'João Gomes'), (222333, 'Carla Maria');

CREATE TABLE DEPARTAMENTO
(
	cod_departamento INTEGER,
	nome_departamento VARCHAR(30) NOT NULL,
	gerente_cpf_ger INTEGER NOT NULL UNIQUE,
	CONSTRAINT pk_departamento PRIMARY KEY(cod_departamento),
	CONSTRAINT fk_gerente_dep FOREIGN KEY(gerente_cpf_ger) REFERENCES GERENTE
);

INSERT INTO DEPARTAMENTO VALUES(1, 'TI', 123456), (2, 'RH', 222333);

-- Melhor forma 
SELECT nome_gerente, nome_departamento FROM GERENTE
	INNER JOIN departamento
	ON gerente_cpf_ger = cpf_gerente;
	
-- Forma classica 
SELECT nome_gerente, nome_departamento FROM gerente, departamento
		WHERE gerente_cpf_ger = cpf_gerente;
		
-- 1:N

CREATE TABLE Funcionario
(
	codFunc integer NOT NULL,				          		
	nome VARCHAR(50) NOT NULL, 
	CONSTRAINT pk_funcionario PRIMARY KEY (codFunc)
);

CREATE TABLE DEPENDENTE (
	codDepend INTEGER NOT NULL,
	codFunc INTEGER NOT NULL,
	nome VARCHAR(50) NOT NULL,
	CONSTRAINT pk_dependente PRIMARY KEY(codDepend, codFunc),
	CONSTRAINT fk_dependente_func FOREIGN KEY (codFunc) REFERENCES FUNCIONARIO
	ON DELETE CASCADE ON UPDATE CASCADE
);

-- Exercicio 1:n
CREATE TABLE CURSO
(
	codCurso INTEGER,
	nome VARCHAR(30) NOT NULL,
	valor REAL,
	CONSTRAINT pk_curso PRIMARY KEY(codCurso)
);

CREATE TABLE ALUNO
(
	ra VARCHAR(20),
	nomeAluno VARCHAR(50) NOT NULL,
	endereco VARCHAR(100),
	codCurso INTEGER,
	CONSTRAINT pk_aluno PRIMARY KEY(ra),
	CONSTRAINT fk_aluno_curso FOREIGN KEY(codCurso) REFERENCES curso
);

CREATE TABLE COORDENADOR
(
	cod_coord INTEGER,
	nome VARCHAR(30) NOT NULL,
	codCurso INTEGER UNIQUE,
	CONSTRAINT pk_coodernador PRIMARY KEY(cod_coord),
	CONSTRAINT fk_coordenador_curso FOREIGN KEY(codCurso) REFERENCES curso
);

-- Tabela intermediaria
CREATE TABLE Funcionario
( 
	cpf VARCHAR(13) NOT NULL,
	nome VARCHAR (50) NOT NULL,
	CONSTRAINT pk_func PRIMARY KEY (cpf)
);

CREATE TABLE PROJETO 
(
	idProjeto INTEGER NOT NULL,
	nomeProj varchar(40) NOT NULL,
	CONSTRAINT pk_projeto PRIMARY KEY(idProjeto)
);

CREATE TABLE TRABALHA
(
	cpf_func VARCHAR (13) NOT NULL,
	idProjeto INTEGER NOT NULL,
	CONSTRAINT pk_trabalha PRIMARY KEY(cpf_func, idProjeto),
	CONSTRAINT fk_cpfFunc FOREIGN KEY (cpf_func) REFERENCES Funcionario,
	CONSTRAINT fk_idProj FOREIGN KEY (idProjeto) REFERENCES Projeto
);

INSERT INTO FUNCIONARIO
	VALUES('123.456', 'João Augusto'), ('456.456', 'Ana Maria'),
		  ('123.123', 'Fey'), ('999.999', 'Datena');
		  
INSERT INTO PROJETO VALUES(1,'VENDAS'),(2,'EXPANSÃO');

INSERT INTO TRABALHA VALUES('123.456', 1), ('123.456',2);
INSERT INTO TRABALHA VALUES('123.123',1), ('999.999', 2);

SELECT * FROM TRABALHA;

SELECT nome, nomeProj FROM funcionario
	INNER JOIN trabalha
	ON cpf_func = cpf
	INNER JOIN projeto
	ON projeto.idProjeto = trabalha.idProjeto;
	
-- Ternário é quando a Chave é composta por 3 tabelas

CREATE TABLE EMPREGADO
(
	idEmp SERIAL,
	pnome VARCHAR(20),
	snome VARCHAR(30),
	salario REAL,
	sexo VARCHAR(1),
	CONSTRAINT pk_empr PRIMARY KEY(idEmp)
);

INSERT INTO empregado 
	(pnome, snome, salario, sexo)
VALUES
	('Pedro', 'Augusto', 2500, 'M'),
	('Maria', 'Fernanda', 3000, 'F'),
	('Carlos', 'Eduardo', 2800, 'M'),
	('Juliana', 'Santos', 3200, 'F'),
	('Ricardo', 'Alves', 2700, 'M'),
	('Ana', 'Lima', 3500, 'F'),
	('Luiz', 'Moraes', 2900, 'M'); 	
	
CREATE TABLE telefoneEmp
(
	idEmp INTEGER,
	telefone VARCHAR(15),
	CONSTRAINT pk_telefone PRIMARY KEY(idEmp, telefone),
	CONSTRAINT fk_tele_empre FOREIGN KEY(idEmp) REFERENCES EMPREGADO
);

INSERT INTO telefoneEmp VALUES
    (1, '(17)9999-9999'),
    (1, '(17)0000-0000'),
    (2, '(11)8888-8888'),
    (2, '(11)7777-7777');

SELECT pnome, telefone FROM empregado
	INNER JOIN telefoneEmp
	ON empregado.idEmp = telefoneEmp.idEmp;
	
-- Hierarquia/Herança
CREATE TABLE PESSOA (
    cpfPes VARCHAR(13) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    dtaNasc DATE,
    CONSTRAINT pk_Pessoa PRIMARY KEY (cpfPes)
);

CREATE TABLE ALUNO (
    ra VARCHAR(15) NOT NULL,
    cpfPes VARCHAR(13) NOT NULL,
    CONSTRAINT pk_aluno PRIMARY KEY (ra, cpfPes),
    CONSTRAINT fk_pes_aluno FOREIGN KEY (cpfPes) REFERENCES PESSOA
);

CREATE TABLE ENGENHEIRO (
    crea INTEGER NOT NULL,
    cpfPes VARCHAR(13) NOT NULL,
    CONSTRAINT pk_engenheiro PRIMARY KEY (crea, cpfPes),
    CONSTRAINT fk_pes_eng FOREIGN KEY (cpfPes) REFERENCES PESSOA
);
--------------------------------------------------
CREATE TABLE MEDICO
(
	CRM VARCHAR(15),
	nome VARCHAR(40),
	CONSTRAINT pk_medico PRIMARY KEY(CRM)
);

CREATE TABLE PACIENTE
(
	cpf VARCHAR(15),
	nome VARCHAR(40),
	CONSTRAINT pk_paciente PRIMARY KEY(cpf)
);

CREATE TABLE CONSULTA
(
	crm VARCHAR(15),
	cpf VARCHAR(15),
	dtaCons DATE,
	CONSTRAINT pk_consulta PRIMARY KEY(crm, cpf, dtaCons),
	CONSTRAINT fk_medico_consu FOREIGN KEY(crm) REFERENCES MEDICO,
	CONSTRAINT fk_paciente_consu FOREIGN KEY(cpf) REFERENCES PACIENTE
);

CREATE TABLE EXAME
(
	idExame INTEGER,
	nome VARCHAR(40),
	CONSTRAINT pk_exame PRIMARY KEY(idExame)
);

CREATE TABLE examesConsulta
(
	idExame INTEGER,
	crm VARCHAR(15),
	cpf VARCHAR(15),
	dtaCons DATE,
	CONSTRAINT pk_examesConsulta PRIMARY KEY(idExame, crm, cpf, dtaCons),
	CONSTRAINT fk_examesCons1 FOREIGN KEY(idExame) REFERENCES EXAME,
	CONSTRAINT fk_examesCons2 FOREIGN KEY(crm, cpf, dtaCons) REFERENCES consulta
);
