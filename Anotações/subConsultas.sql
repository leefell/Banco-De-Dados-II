-- Consultas Aninhadas (Subconsultas)
 -- Exemplo de subconsulta utilizando o operador IN:
-- Objetivo: selecionar vendedores que possuem pelo menos um pedido associado.

SELECT V.NOME_VENDEDOR,
	V.CODIGO_VENDEDOR
FROM VENDEDOR V
WHERE V.CODIGO_VENDEDOR IN
		(SELECT P.CODIGO_VENDEDOR
			FROM PEDIDO P)
ORDER BY V.NOME_VENDEDOR;

-- Exemplo alternativo da mesma consulta utilizando JOIN:
-- Observação: é necessário o uso de DISTINCT para evitar duplicações de dados.

SELECT DISTINCT V.NOME_VENDEDOR,
	V.CODIGO_VENDEDOR
FROM VENDEDOR V
INNER JOIN PEDIDO P ON V.CODIGO_VENDEDOR = P.CODIGO_VENDEDOR
ORDER BY V.NOME_VENDEDOR;

-- Consulta simples para listar prazos de entrega e código do vendedor de todos os pedidos.

SELECT PRAZO_ENTREGA,
	CODIGO_VENDEDOR
FROM PEDIDO
ORDER BY PRAZO_ENTREGA;

-- Consulta com JOIN e função de agregação:
-- Objetivo: exibir o nome e código dos vendedores e o menor prazo de entrega associado a cada um.

SELECT V.NOME_VENDEDOR,
	V.CODIGO_VENDEDOR,
	MIN(P.PRAZO_ENTREGA) AS MENOR_PRAZO_ENTREGA
FROM VENDEDOR V
INNER JOIN PEDIDO P ON P.CODIGO_VENDEDOR = V.CODIGO_VENDEDOR
GROUP BY V.NOME_VENDEDOR,
	V.CODIGO_VENDEDOR;

-- Consulta com subconsulta para retornar o prazo mínimo de entrega:
-- Objetivo: exibir nome, código do vendedor e os prazos de entrega mínimos, sem duplicação direta.

SELECT V.NOME_VENDEDOR,
	V.CODIGO_VENDEDOR,
	P.PRAZO_ENTREGA
FROM VENDEDOR V
INNER JOIN PEDIDO P ON P.CODIGO_VENDEDOR = V.CODIGO_VENDEDOR
WHERE P.PRAZO_ENTREGA IN
		(SELECT MIN(PRAZO_ENTREGA)
			FROM PEDIDO);

-- Exemplo de subconsulta para encontrar o maior prazo de entrega:
-- Objetivo: exibir o nome, código dos vendedores e os pedidos com o maior prazo de entrega.
-- Essa consulta não poderia ser feita apenas com JOIN.

SELECT V.NOME_VENDEDOR,
	V.CODIGO_VENDEDOR,
	P.PRAZO_ENTREGA
FROM VENDEDOR V
INNER JOIN PEDIDO P ON P.CODIGO_VENDEDOR = V.CODIGO_VENDEDOR
WHERE P.PRAZO_ENTREGA =
		(SELECT MAX(PRAZO_ENTREGA)
			FROM PEDIDO);

-- Nota sobre o uso de DISTINCT:
-- Em consultas com INNER JOIN, o uso de DISTINCT é necessário para evitar repetição de registros,
-- principalmente quando um vendedor possui múltiplos pedidos associados.
 --

SELECT V.NOME_VENDEDOR
FROM VENDEDOR V
WHERE V.CODIGO_VENDEDOR IN
		(SELECT P.CODIGO_VENDEDOR
			FROM PEDIDO P
			WHERE P.CODIGO_CLIENTE IN
					(SELECT C.CODIGO_CLIENTE
						FROM CLIENTE C
						WHERE C.UF = 'SP'));
						
SELECT E.PNOME,
	E.SALARIO
FROM EMPREGADO E
WHERE E.SALARIO =
		(SELECT MAX(SALARIO)
			FROM EMPREGADO);
		
SELECT * from empregado;

-- Selecionar o pnome, o cargo e o salario dos empregados com o maior
-- salário de cada cargo.

SELECT E.CARGO,
	E.PNOME,
	E.SALARIO
FROM EMPREGADO E WHERE(CARGO, SALARIO) IN
	(SELECT CARGO,
			MAX(SALARIO)
		FROM EMPREGADO
		GROUP BY CARGO);
