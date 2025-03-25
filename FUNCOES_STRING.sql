/*
    FUNÇÕES PARA STRINGS
*/

-- FORMATO
SELECT 
    Nome AS NOME,
    UPPER(Nome) AS MAISCULO,
    LOWER(Nome) AS MINUSCULO
FROM  Clientes;

-- CONCATENACAO
SELECT
    Nome,
    CONCAT(Endereco1, ' ', Bairro, ' ', Cidade, ' ', Estado, ' ', Cep) AS ENDERECO
FROM Clientes;

SELECT
    Nome,
    Endereco1 + ' ' + Bairro + ' ' + Cidade + ' ' + Estado + ' ' + Cep AS ENDERECO
FROM Clientes;


-- SELECIONAR OS PRIMEIROS CARACTERES
SELECT 
    Nome,
    LEFT(Nome, 5) AS CINCO_PRIMEIROS_CARACT
FROM Produtos;


-- SUBSTITUIR CARACTERES
SELECT  
   Tamanho,
   REPLACE(Tamanho, 'Litros', 'L') AS TAMANHO_MOD
FROM Produtos;

SELECT  
   Tamanho,
   REPLACE(REPLACE(Tamanho, 'Litros', 'L'), 'Litro','L') AS TAMANHO_MOD
FROM Produtos;