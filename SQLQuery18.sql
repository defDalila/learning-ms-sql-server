SELECT * FROM Produtos WHERE
Sabor IN ('Manga', 'Melancia');

SELECT COUNT(*)
FROM Clientes
WHERE Cidade LIKE 'Sao%'
AND (Idade BETWEEN 20 AND 25);