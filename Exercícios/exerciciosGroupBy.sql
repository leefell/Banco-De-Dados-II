CREATE TABLE cidadesBrasil
        (nomeCidade VARCHAR (70),
         siglaEstado VARCHAR (4),
         populacao REAL,
         regiao VARCHAR (30),
         idhm real,
         escolarizacao REAL,
         CONSTRAINT pk_cidadesBrasil PRIMARY KEY (nomeCidade)
        );

--Cidades do Acre
INSERT INTO cidadesBrasil
        VALUES ('Rio Branco', 'AC', 364756, 'Norte', 0.727, 95.1),
                   ('FeijÃ³', 'AC', 35426, 'Norte', 0.539, 82.9),
                   ('JordÃ£o', 'AC', 9222, 'Norte', 0.469, 71.3);

--Cidades do Alagoas
INSERT INTO cidadesBrasil
        VALUES ('MaceiÃ³', 'AL', 957916, 'Nordeste', 0.721, 95),
                   ('Arapiraca', 'AL', 234696, 'Nordeste', 0.649, 95.9),
                   ('Coruripe', 'AL', 50414, 'Nordeste', 0.626, 97.6);

--Cidades do AmapÃ¡
INSERT INTO cidadesBrasil
        VALUES ('MacapÃ¡', 'AP', 442933, 'Norte', 0.733, 94.8),
                   ('Oiapoque', 'AP', 27482, 'Norte', 0.658, 96),
                   ('Serra do Navio', 'AP', 4673, 'Norte', 0.709, 98.4);

--Cidades do Amazonas
INSERT INTO cidadesBrasil
        VALUES ('Manaus', 'AM', 2063689, 'Norte', 0.737, 94.2),
                   ('Parintins', 'AM', 96372, 'Norte', 0.658, 93),
                   ('HumaitÃ¡', 'AM', 57473, 'Norte', 0.605, 90.4);

--Cidades da Bahia
INSERT INTO cidadesBrasil
        VALUES ('Salvador', 'BA', 2417678, 'Nordeste', 0.759, 95.9),
                   ('IlhÃ©us', 'BA', 178649, 'Nordeste', 0.690, 96.7),
                   ('Feira de Santana', 'BA', 616272, 'Nordeste', 0.712, 97.4),
                   ('VitÃ³ria da Conquista', 'BA', 370879, 'Nordeste', 0.678, 96.8);

--Cidades do CearÃ¡
INSERT INTO cidadesBrasil
        VALUES ('Fortaleza', 'CE', 2428708, 'Nordeste', 0.754, 96.1),
                   ('Sobral', 'CE', 203023, 'Nordeste', 0.714, 97.9),
                   ('QuixadÃ¡', 'CE', 84168, 'Nordeste', 0.659, 95.8);

--Cidades do EspÃ­rito Santo
INSERT INTO cidadesBrasil
        VALUES ('VitÃ³ria', 'ES', 322869, 'Sudeste', 0.845, 97.6),
                   ('Serra', 'ES', 520653, 'Sudeste', 0.739, 96.9),
                   ('Guarapari', 'ES', 124656, 'Sudeste', 0.731, 96.2);

--Cidades do GoiÃ¡s
INSERT INTO cidadesBrasil
        VALUES ('GoiÃ¢nia', 'GO', 1437366, 'Centro Oeste', 0.799, 96.4),
                   ('AnÃ¡polis', 'GO', 398869, 'Centro Oeste', 0.737, 96.3),
                   ('CatalÃ£o', 'GO', 114427, 'Centro Oeste', 0.766, 97.1);

--Cidades do MaranhÃ£o
INSERT INTO cidadesBrasil
        VALUES ('SÃ£o Luis', 'MA', 1037775, 'Nordeste', 0.768, 96.8),
                   ('Imperatriz', 'MA', 273110, 'Nordeste', 0.731, 98.4),
                   ('CodÃ³', 'MA', 114275, 'Nordeste', 0.595, 97.1);

--Cidades do Mato Grosso
INSERT INTO cidadesBrasil
        VALUES ('CuiabÃ¡', 'MT', 650877, 'Centro Oeste', 0.785, 95.8),
                   ('VÃ¡rzea Grande', 'MT', 300078, 'Centro Oeste', 0.734, 95.9),
                   ('CÃ¡ceres', 'MT', 89681, 'Centro Oeste', 0.708, 97.8);

--Cidades do Mato Grosso do Sul
INSERT INTO cidadesBrasil
        VALUES ('Campo Grande', 'MS', 890100, 'Centro Oeste', 0.784, 98),
                   ('TrÃªs Lagoas', 'MS', 132152, 'Centro Oeste', 0.744, 97.5),
                   ('ParanaÃ­ba', 'MS', 40957, 'Centro Oeste', 0.721, 99.3);

--Cidades das Minas Gerais
INSERT INTO cidadesBrasil
        VALUES ('Belo Horizonte', 'MG', 2315560, 'Sudeste', 0.810, 97.6),
                   ('ViÃ§osa', 'MG', 76430, 'Sudeste', 0.775, 99),
                   ('UberlÃ¢ndia', 'MG', 713224, 'Sudeste', 0.789, 98),
                   ('Iturama', 'MG', 38295, 'Sudeste', 0.747, 98.8),
                   ('PoÃ§os de Caldas', 'MG', 163742, 'Sudeste', 0.779, 97.7);

--Cidades do ParÃ¡
INSERT INTO cidadesBrasil
        VALUES ('BelÃ©m', 'PA', 1303403, 'Norte', 0.746, 96.1),
                   ('SantarÃ©m', 'PA', 331942, 'Norte', 0.691, 97.3),
                   ('MarabÃ¡', 'PA', 266533, 'Norte', 0.668, 94.7);

--Cidades da ParaÃ­ba
INSERT INTO cidadesBrasil
        VALUES ('JoÃ£o Pessoa', 'PB', 833932, 'Nordeste', 0.763, 96.9),
                   ('Campina Grande', 'PB', 419379, 'Nordeste', 0.720, 97.6),
                   ('Cabedelo', 'PB', 66519, 'Nordeste', 0.748, 97.3);

--Cidades do ParanÃ¡
INSERT INTO cidadesBrasil
        VALUES ('Curitiba', 'PR', 1773718, 'Sul', 0.823, 97.6),
                   ('Foz do IguaÃ§u', 'PR', 285415, 'Sul', 0.751, 96.4),
                   ('Ponta Grossa', 'PR', 358371, 'Sul', 0.763, 98.2),
                   ('Londrina', 'PR', 555965, 'Sul', 0.778, 97.3);

--Cidades do Pernambuco
INSERT INTO cidadesBrasil
        VALUES ('Recife', 'PE', 1488920, 'Nordeste', 0.772, 97.1),
                   ('Olinda', 'PE', 349976, 'Nordeste', 0.735, 96.9),
                   ('Ipojuca', 'PE', 98932, 'Nordeste', 0.619, 97.3);

--Cidades do PiauÃ­
INSERT INTO cidadesBrasil
        VALUES ('Teresina', 'PI', 866300, 'Nordeste', 0.751, 97.8),
                   ('ParnaÃ­ba', 'PI', 162159, 'Nordeste', 0.687, 97.5),
                   ('Picos', 'PI', 83090, 'Nordeste', 0.698, 98.3);

--Cidades do Rio de Janeiro
INSERT INTO cidadesBrasil
        VALUES ('Rio de Janeiro', 'RJ', 6211223, 'Sudeste', 0.799, 96.9),
                   ('NiterÃ³i', 'RJ', 481749, 'Sudeste', 0.837, 97),
                   ('Angra dos Reis', 'RJ', 167434, 'Sudeste', 0.724, 96.4),
                   ('ArmaÃ§Ã£o dos BÃºzios', 'RJ', 40006, 'Sudeste', 0.728, 97.6),
                   ('Resende', 'RJ', 129612, 'Sudeste', 0.768, 97);

--Cidades do Rio Grande do Norte
INSERT INTO cidadesBrasil
        VALUES ('Natal', 'RN', 751300, 'Nordeste', 0.763, 96.3),
                   ('MossorÃ³', 'RN', 264577, 'Nordeste', 0.720, 97.7),
                   ('Extremoz', 'RN', 61635, 'Nordeste', 0.660, 96.6);

--Cidades do Rio Grande do Sul
INSERT INTO cidadesBrasil
        VALUES ('Porto Alegre', 'RS', 1332845, 'Sul', 0.805, 96.6),
                   ('Canoas', 'RS', 347657, 'Sul', 0.750, 95.9),
                   ('Gramado', 'RS', 40134, 'Sul', 0.764, 96.9),
                   ('Caxias do Sul', 'RS', 463501, 'Sul', 0.782, 96.3);

--Cidades de RondÃ´nia
INSERT INTO cidadesBrasil
        VALUES ('Porto Velho', 'RO', 460434, 'Norte', 0.736, 94.5),
                   ('Ariquemes', 'RO', 96833, 'Norte', 0.702, 97.2),
                   ('Cacoal', 'RO', 86887, 'Norte', 0.718, 97.6);

--Cidades de Roraima
INSERT INTO cidadesBrasil
        VALUES ('Boa Vista', 'RR', 413486, 'Norte', 0.752, 96.6),
                   ('Alto Alegre', 'RR', 20096, 'Norte', 0.542, 56),
                   ('CantÃ¡', 'RR', 18682, 'Norte', 0.619, 96.2);

--Cidades de Santa Catarina
INSERT INTO cidadesBrasil
        VALUES ('FlorianÃ³polis', 'SC', 537211, 'Sul', 0.847, 98.4),
                   ('CamboriÃº', 'SC', 103074, 'Sul', 0.726, 96.6),
                   ('Blumenau', 'SC', 361261, 'Sul', 0.806, 97),
                   ('ItajaÃ­', 'SC', 264054, 'Sul', 0.795, 97.9);

--Cidades de SÃ£o Paulo
INSERT INTO cidadesBrasil
        VALUES ('SÃ£o Paulo', 'SP', 11451999, 'Sudeste', 0.805, 96),
                   ('Campinas', 'SP', 1139047, 'Sudeste', 0.805, 96),
                   ('Santos', 'SP', 418608, 'Sudeste', 0.840, 98.2),
                   ('GuarujÃ¡', 'SP', 287634, 'Sudeste', 0.751, 95.9),
                   ('SÃ£o JosÃ© do Rio Preto', 'SP', 480393, 'Sudeste', 0.797, 98),
                   ('RibeirÃ£o Preto', 'SP', 698642, 'Sudeste', 0.800, 96.9),
                   ('Votuporanga', 'SP', 96634, 'Sudeste', 0.790, 98.8),
                   ('Cosmorama', 'SP', 8719, 'Sudeste', 0.722, 97.9),
                   ('Jales', 'SP', 48776, 'Sudeste', 0.776, 98.9);

--Cidades do Sergipe
INSERT INTO cidadesBrasil
        VALUES ('Aracaju', 'SE', 602757, 'Nordeste', 0.770, 97.4),
                   ('Itabaiana', 'SE', 103440, 'Nordeste', 0.642, 96.4),
                   ('Capela', 'SE', 31645, 'Nordeste', 0.615, 96.3);

--Cidades do Tocantins
INSERT INTO cidadesBrasil
        VALUES ('Palmas', 'TO', 302692, 'Centro Oeste', 0.788, 98),
                   ('AraguaÃ­na', 'TO', 171301, 'Centro Oeste', 0.752, 97.5),
                   ('Pedro Afonso', 'TO', 14055, 'Centro Oeste', 0.732, 97.4);

--Distrito federal
INSERT INTO cidadesBrasil
        VALUES ('BrasÃ­lia', 'DF', 2817381, 'Centro Oeste', 0.824, 97.5);

-- 1
SELECT continente, avg(idh) FROM pais
        GROUP BY continente;

-- 2
SELECT continente, sum(populacao) FROM pais
        GROUP BY continente
        ORDER BY sum(populacao);

-- 3
SELECT continente, max(idh) AS "Maior IDH", min(idh) AS "Menor IDH" FROM pais
        GROUP BY continente
        HAVING min(idh) > 0.4 and max(idh) < 0.94;

-- CIDADES BRASIL

-- 4
SELECT regiao, avg(escolarizacao) FROM cidadesBrasil
        GROUP BY regiao
        ORDER BY avg(escolarizacao) DESC;

-- 5
SELECT siglaEstado, max(idhm) FROM cidadesBrasil
        GROUP BY siglaEstado
        ORDER BY max(idhm) DESC;

-- 6 
SELECT regiao, sum(populacao) FROM cidadesBrasil
	GROUP BY regiao
	ORDER BY max(populacao) ASC;
	
-- 7 
SELECT siglaEstado, avg(escolarizacao) FROM cidadesBrasil
	GROUP BY siglaEstado
	HAVING avg(escolarizacao) > 95
	ORDER BY avg(escolarizacao) ASC;