/*
    SEPARANDO NOME DE SOBRENOME
*/

SELECT
   Nome AS [NOME COMPLETO]
FROM Clientes


-- CHARINDEX (determina posição do ' ')
SELECT
   Nome AS [NOME COMPLETO],
   CHARINDEX(' ',Nome, 1) AS INDICE
FROM Clientes


-- SUBSTRING (cria substring com base no indice)

SELECT
   Nome AS [NOME COMPLETO],
   CHARINDEX(' ',Nome, 1) AS INDICE,
   SUBSTRING(Nome, 1, CHARINDEX(' ',Nome, 1)) AS NOME,
   SUBSTRING(Nome, CHARINDEX(' ',Nome, 1), LEN(Nome)) AS SOBRENOME
FROM Clientes;