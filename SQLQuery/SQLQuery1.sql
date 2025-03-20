
Create Table Clientes(
    Cpf Varchar(11) Not Null,
    Nome Varchar(100) Null,
    Endereco1 Varchar(150) Null,
    Endereco2 Varchar(150) Null,
    Bairro Varchar(50) Null,
    Cidade Varchar(50) Null,
    Estado Varchar(2) Null,
    Cep Varchar(8) Null,
    DataNascimento Date Null,
    Idade Integer Null,
    Genero Varchar(1) Null,
    LimiteCredito Float Null,
    VolumeCompra Float Null,
    PrimeiraCompra Bit Null
);

ALTER TABLE Clientes ADD CONSTRAINT PK_Clientes PRIMARY KEY (Cpf);

CREATE TABLE Produtos(
    Codigo Varchar(10) Not Null,
    Nome Varchar(50) Null,
    Embalagem Varchar(20) Null,
    Tamanho Varchar(10) Null,
    Sabor Varchar(20) Null,
    Preco Float Not Null
);

ALTER TABLE Produtos ADD CONSTRAINT 
PK_Produtos PRIMARY KEY (Codigo);

CREATE TABLE Vendedores(
    Matricula Varchar(5) Not Null,
    Nome Varchar(100) Null,
    Comissao Float Null,
    DataAdmissao Date Null,
    EmFerias Bit Null,
    Bairro Varchar(50) Null
);

ALTER TABLE Vendedores ADD CONSTRAINT 
PK_Vendedores PRIMARY KEY (Matricula);

CREATE TABLE NotasFiscais(
    Cpf Varchar(11) Not Null,
    Matricula Varchar(5) Not Null,
    Datavenda Date Null,
    Numero Integer Not Null,
    Imposto Float Not Null
);

ALTER TABLE NotasFiscais ADD CONSTRAINT 
PK_NotasFiscais PRIMARY KEY (Numero);

ALTER TABLE NotasFiscais
ADD CONSTRAINT FK_Notas_Vendedores
FOREIGN KEY (Matricula)
REFERENCES Vendedores (Matricula);	
   
Alter Table NotasFiscais
Add Constraint FK_Notas_Clientes
Foreign Key (Cpf)
References Clientes (Cpf);	

Create Table ItensNotas(
Numero Integer Not Null,
CodigoProduto Varchar(10) Not Null,
Quantidade Integer Not Null,
Preco Float Not Null);

Alter Table ItensNotas Add Constraint 
PK_ItensNotas Primary Key (Numero, CodigoProduto);

Alter Table ItensNotas
Add Constraint FK_ItensNotas_Produtos
Foreign Key (CodigoProduto)
References Produtos (Codigo);

Alter Table ItensNotas
Add Constraint FK_ItensNotas_Notas
Foreign Key (Numero)
References NotasFiscais (Numero);	

 