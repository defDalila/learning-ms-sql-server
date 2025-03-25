---
SELECT
    COUNT(*) AS [TOTAL DE CLIENTES CADASTRADOS]
FROM Clientes


SELECT DISTINCT
    C.Cpf AS CPF,
    C.Nome AS NOME,
    N.Cpf AS [CPF DA NOTA]
FROM Clientes C
INNER JOIN NotasFiscais N
ON C.Cpf = N.Cpf


SELECT DISTINCT
    C.Cpf AS CPF,
    C.Nome AS NOME,
    N.Cpf AS [CPF DA NOTA]
FROM Clientes C
LEFT JOIN NotasFiscais N
ON C.Cpf = N.Cpf



---
INSERT INTO Clientes VALUES (
    '03546555155', 'Dalila Mendonca', 'Avenida Atlantica', '', 'Leblon', 
    'Rio de Janeiro', 'RJ', '23000000', '1992-05-24', 33, 'F', 180000, 25500, 0
);