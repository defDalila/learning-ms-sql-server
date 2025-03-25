/*
    HAVING E SUBCONSULTAS
*/

SELECT 
    Embalagem,
    AVG(Preco) AS [Preco Medio]
FROM Produtos
GROUP BY Embalagem
HAVING AVG(Preco) <= 10;


-- Utilizando subquery
SELECT MEDIA.Embalagem, MEDIA.[Preco Medio] FROM
(SELECT Embalagem, AVG(Preco) AS [Preco Medio] FROM Produtos
GROUP BY Embalagem HAVING AVG(Preco) <= 10) AS MEDIA
WHERE MEDIA.[Preco Medio] <= 10;