CREATE TABLE ATOR
(
    idAtor INTEGER,
    nome VARCHAR(30),
    dtaNasc DATE,
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

CREATE TABLE atorEstrelaFilme
(
    idAtor INTEGER,
    codFilme INTEGER,
    CONSTRAINT fk_idAtor FOREIGN KEY(idAtor) REFERENCES ATOR,
    CONSTRAINT fk_codFilme FOREIGN KEY(codFilme) REFERENCES FILME,
    CONSTRAINT pk_atorEstrelaFilme PRIMARY KEY(idAtor, codFilme)
);

CREATE TABLE EXEMPLAR
(
    nroExemplar INTEGER,
    codFilme INTEGER,
    CONSTRAINT fk_codFilme FOREIGN KEY(codFilme) REFERENCES FILME,
    CONSTRAINT pk_exemplar PRIMARY KEY(nroExemplar, codFilme)
);

CREATE TABLE CLIENTE
(
    codCliente INTEGER,
    nome VARCHAR(30),
    Rua VARCHAR(30),
    nro INTEGER,
    cidade VARCHAR(30),
    CEP VARCHAR(30),
    dtaLanc DATE,
    CONSTRAINT pk_cliente PRIMARY KEY (codCliente)
);

CREATE TABLE TelefoneCliente
(
    nroTelefone INTEGER,
    codCliente INTEGER,
    CONSTRAINT fk_codCliente FOREIGN KEY(codCliente) REFERENCES CLIENTE,
    CONSTRAINT pk_TelefoneCliente PRIMARY KEY(nroTelefone, codCliente)
);

CREATE TABLE CLIENTE_has_EXEMPLAR
(
    codCliente INTEGER,
    codFilme INTEGER,
    nroExemplar INTEGER,
    dtaEmpr DATE,
    dtaDev DATE,
    CONSTRAINT fk_nroExemplar FOREIGN KEY(nroExemplar, codFilme) REFERENCES EXEMPLAR,
    CONSTRAINT fk_codFilme FOREIGN KEY(codFilme) REFERENCES FILME,
    CONSTRAINT pk_CLIENTE_has_EXEMPLAR PRIMARY KEY(nroExemplar, codFilme, codCliente)
);
