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
    CONSTRAINT fk_idAtor FOREIGN KEY(idAtor) REFERENCES ATOR(idAtor),
    CONSTRAINT fk_codFilme FOREIGN KEY(codFilme) REFERENCES FILME(codFilme),
    CONSTRAINT pk_atorEstrelaFilme PRIMARY KEY(idAtor, codFilme)
);

CREATE TABLE EXEMPLAR
(
    nroExemplar INTEGER,
    codFilme INTEGER,
    CONSTRAINT fk_codFilme FOREIGN KEY(codFilme) REFERENCES FILME(codFilme),
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
    CONSTRAINT fk_codCliente FOREIGN KEY(codCliente) REFERENCES CLIENTE(codCliente),
    CONSTRAINT pk_TelefoneCliente PRIMARY KEY(nroTelefone, codCliente)
);

CREATE TABLE CLIENTE_has_EXEMPLAR
(
    codCliente INTEGER,
    codFilme INTEGER,
    nroExemplar INTEGER,
    dtaEmpr DATE,
    dtaDev DATE,
    CONSTRAINT fk_nroExemplar FOREIGN KEY(nroExemplar, codFilme) REFERENCES EXEMPLAR(nroExemplar, codFilme),
    CONSTRAINT fk_codFilme FOREIGN KEY(codFilme) REFERENCES FILME(codFilme),
    CONSTRAINT pk_CLIENTE_has_EXEMPLAR PRIMARY KEY(nroExemplar, codFilme, codCliente)
);

CREATE TABLE proprietario
(
    cod_propri INTEGER,
    nome VARCHAR(30),
    CONSTRAINT pk_proprietario PRIMARY KEY(cod_propri)
);

CREATE TABLE fisico
(
    cod_propri INTEGER,
    CPF INTEGER UNIQUE,
    CONSTRAINT fk_proprietario FOREIGN KEY(cod_propri) REFERENCES proprietario(cod_propri),
    CONSTRAINT pk_fisico PRIMARY KEY(cod_propri, CPF)
);

CREATE TABLE juridico
(
    cod_propri INTEGER,
    CNPJ INTEGER UNIQUE,
    CONSTRAINT fk_proprietario FOREIGN KEY(cod_propri) REFERENCES proprietario(cod_propri),
    CONSTRAINT pk_juridico PRIMARY KEY(cod_propri, CNPJ)
);

CREATE TABLE veiculo
(
    placa VARCHAR(7),
    modelo VARCHAR(30),
    ano_fabricacao INTEGER,
    CONSTRAINT pk_veiculo PRIMARY KEY(placa)
);

CREATE TABLE possui
(
    cod_propri INTEGER,
    placa VARCHAR(7),
    CONSTRAINT fk_proprietario FOREIGN KEY(cod_propri) REFERENCES proprietario(cod_propri),
    CONSTRAINT fk_placa FOREIGN KEY(placa) REFERENCES veiculo(placa),
    CONSTRAINT pk_possui PRIMARY KEY(cod_propri, placa)
);
