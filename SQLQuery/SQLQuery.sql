SELECT 
    Matricula,
    COUNT (*) AS [Total de Vendas]
FROM NotasFiscais
GROUP BY Matricula