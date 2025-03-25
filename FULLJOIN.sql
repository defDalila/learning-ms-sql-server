SELECT DISTINCT
    V.Nome AS VENDEDOR,
    V.Bairro AS [BAIRRO VENDEDOR],
    C.Nome AS CLIENTE,
    C.Bairro AS [BAIRRO CLIENTE]
FROM Clientes C
FULL JOIN Vendedores V
ON C.Bairro = V.Bairro;