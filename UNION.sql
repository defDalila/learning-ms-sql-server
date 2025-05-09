-- TOTAL DE BAIRROS
SELECT DISTINCT Bairro FROM Clientes
SELECT COUNT(DISTINCT Bairro) FROM Clientes;

SELECT DISTINCT Bairro FROM Vendedores
SELECT COUNT(DISTINCT Bairro) FROM Vendedores;


-- UNION
SELECT DISTINCT Bairro FROM Clientes
UNION
SELECT DISTINCT Bairro FROM Vendedores;


-- UNION ALL
SELECT DISTINCT Bairro FROM Clientes
UNION ALL
SELECT DISTINCT Bairro FROM Vendedores;

-- CONSTANTE
SELECT DISTINCT Bairro, 'CLIENTE' AS ORIGEM FROM Clientes
UNION ALL
SELECT DISTINCT Bairro, 'VENDEDOR' AS ORIGEM FROM Vendedores;
