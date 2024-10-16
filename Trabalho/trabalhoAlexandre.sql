-- 1
CREATE TABLE LIVRO
(
	ISBN INTEGER,
	titulo VARCHAR(60),
	nroPgs INTEGER,
	ano INTEGER,
	edicao INTEGER,
	
	CONSTRAINT pk_livro PRIMARY KEY(ISBN)
);

CREATE TABLE ALUNO
(
	PRONTUARIO VARCHAR(10),
	nome VARCHAR(50),
	dtaNasc DATE,
	rua VARCHAR(30),
	bairro VARCHAR(30),
	cidade VARCHAR(50),
	cep VARCHAR(15),
	
	CONSTRAINT pk_aluno PRIMARY KEY(PRONTUARIO)
);

CREATE TABLE TELEFONE
(
	nroTelefone INTEGER,
	prontuario VARCHAR(10),
	
	CONSTRAINT pk_telefone PRIMARY KEY(nroTelefone, prontuario),
	CONSTRAINT fk_aluno FOREIGN KEY(prontuario) REFERENCES ALUNO ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE RESERVASLIVRO
(
	ISBN INTEGER,
	prontuario VARCHAR(10),
	dtaRes DATE,
	dtaDev DATE,
	
	CONSTRAINT pk_reservasLivro PRIMARY KEY(ISBN, prontuario, dtaRes),
	CONSTRAINT fk_livro FOREIGN KEY(ISBN) REFERENCES LIVRO ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_aluno FOREIGN KEY(PRONTUARIO) REFERENCES ALUNO
);

-- 2 

INSERT INTO LIVRO (ISBN, titulo, nroPgs, ano, edicao) VALUES
(1234567890, 'Introdução à Programação', 300, 2020, 2),
(1234567891, 'Banco de Dados Avançado', 450, 2019, 1),
(1234567892, 'Estruturas de Dados', 350, 2021, 3),
(1234567893, 'Redes de Computadores', 500, 2018, 4),
(1234567894, 'Inteligência Artificial', 400, 2022, 1);

INSERT INTO ALUNO (PRONTUARIO, nome, dtaNasc, rua, bairro, cidade, cep) VALUES
('SP12345', 'João Silva', '2000-05-15', 'Rua A', 'Bairro Centro', 'São Paulo', '12345-678'),
('SP12346', 'Maria Oliveira', '1999-12-22', 'Rua B', 'Bairro Norte', 'São Paulo', '23456-789'),
('SP12347', 'Pedro Souza', '2001-07-30', 'Rua C', 'Bairro Leste', 'São Paulo', '34567-890'),
('SP12348', 'Ana Lima', '1998-03-10', 'Rua D', 'Bairro Sul', 'São Paulo', '45678-901'),
('SP12349', 'Carlos Almeida', '2000-09-25', 'Rua E', 'Bairro Oeste', 'São Paulo', '56789-012');

INSERT INTO TELEFONE (nroTelefone, prontuario) VALUES
(117654321, 'SP12345'),
(987654322, 'SP12346'),
(119654323, 'SP12347'),
(119876324, 'SP12348'),
(119876525, 'SP12349');

INSERT INTO RESERVASLIVRO (ISBN, prontuario, dtaRes, dtaDev) VALUES
(1234567890, 'SP12345', '2024-10-01', '2024-10-15'),
(1234567891, 'SP12346', '2024-10-02', '2024-10-16'),
(1234567892, 'SP12347', '2024-10-03', '2024-10-17'),
(1234567893, 'SP12348', '2024-10-04', '2024-10-18'),
(1234567894, 'SP12349', '2024-10-05', '2024-10-19');
