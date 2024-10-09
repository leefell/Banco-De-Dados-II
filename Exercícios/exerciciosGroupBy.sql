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
	ORDER BY sum(populacao) ASC;
	
-- 7 
SELECT siglaEstado, avg(escolarizacao) FROM cidadesBrasil
	GROUP BY siglaEstado
	HAVING avg(escolarizacao) > 95
	ORDER BY avg(escolarizacao) ASC;