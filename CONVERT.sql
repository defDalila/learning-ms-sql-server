/*
    FUNÇÕES DE CONVERSÃO
*/

-- DATA PARA TEXTO
SELECT
    GETDATE(),
    CONVERT(VARCHAR(25), GETDATE(), 103),
    CONVERT(VARCHAR(25), GETDATE(), 113),
    CONVERT(VARCHAR(25), GETDATE(), 121);

--
SELECT 
    Nome,
    DataNascimento,
    CONVERT(VARCHAR(10), DataNascimento, 103) AS [D.N Formatada]
FROM Clientes