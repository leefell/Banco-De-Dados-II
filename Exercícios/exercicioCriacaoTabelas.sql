-- Exercicio para enviar
CREATE TABLE ATOR
(
	idAtor INTEGER,
	nome VARCHAR(30),
	dtaNasc DATE
	CONSTRAINT pk_ator PRIMARY KEY (idAtor)
);

CREATE TABLE FILME
(
	codFilme INTEGER,
	nome VARCHAR(30),
	genero VARCHAR(20),
	dtaLanc DATE,
	CONSTRAINT pk_filme PRIMARY KEY (codFilme)
);

CREATE TABLE CLIENTE
(
	codCliente INTEGER,
	nome VARCHAR(30),
	dtaLanc DATE,
	CONSTRAINT pk_cliente PRIMARY KEY (codCliente)
	--faltam atributos
);
