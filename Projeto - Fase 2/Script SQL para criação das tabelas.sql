---------------------------------------------
-- Banco de Dados
-- Projeto - Fase 2
-- Nicolas Dorneles Seidler
-- Data: 07/09/2024
---------------------------------------------
-- Script SQL para criação das Tabelas
---------------------------------------------
-- Tabela Construtora
CREATE TABLE construtoras
(
	cod_construtora NUMERIC(2)   NOT NULL,
    nome            VARCHAR(150) NOT NULL,
    nome_fantasia   VARCHAR(150) NULL,
    data_fundacao   DATE         NOT NULL,

    CONSTRAINT pk_construtoras PRIMARY KEY (cod_construtora)
);

-- Tabela Telefone 
CREATE TABLE telefones 
(
	telefone        VARCHAR(14) NOT NULL,
    cod_construtora NUMERIC(2)  NOT NULL,

    CONSTRAINT pk_telefones PRIMARY KEY (telefone)
);

-- Tabela Categoria
CREATE TABLE categorias
(
	cod_categoria NUMERIC(1)  NOT NULL,
    descricao     VARCHAR(50) NOT NULL,

    CONSTRAINT pk_categorias PRIMARY KEY (cod_categoria)
);

-- Tabela Obra
CREATE TABLE obras
(
	cod_obra        NUMERIC(3)   NOT NULL,
    nome            VARCHAR(150) NOT NULL,
    end_logradouro  VARCHAR(150) NOT NULL,
    end_numero      VARCHAR(10)  NOT NULL,
    end_complemento VARCHAR(100) NULL,
    cod_construtora NUMERIC(2)   NOT NULL,

    CONSTRAINT pk_obras PRIMARY KEY (cod_obra)
);

-- Tabela Trabalhador 
CREATE TABLE trabalhadores
(
	cpf      CHAR(14)     NOT NULL,
    nome     VARCHAR(100) NOT NULL,
    salario  NUMERIC(6,2) NOT NULL CHECK (salario > 0),
    cod_obra NUMERIC(3)   NOT NULL,

    CONSTRAINT pk_trabalhadores PRIMARY KEY (cpf)
);

-- Tabela Equipamento 
CREATE TABLE equipamentos
(
	cod_equipamento NUMERIC(3)   NOT NULL,
    nome            VARCHAR(150) NOT NULL,
    valor           NUMERIC(5,2) NOT NULL CHECK (valor > 0),
    cod_categoria   NUMERIC(1)   NOT NULL,

    CONSTRAINT pk_equipamentos PRIMARY KEY (cod_equipamento)
);

-- Tabela Obras_Equipamentos
CREATE TABLE obras_equipamentos
(
	inicio_cont     DATE       NOT NULL,
    termino_cont    DATE       NOT NULL,
    cod_obra        NUMERIC(3) NOT NULL,
    cod_equipamento NUMERIC(3) NOT NULL,

    CONSTRAINT pk_obras_equipamentos PRIMARY KEY (inicio_cont, termino_cont)
);

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-- Alterando Tabela Telefones
ALTER TABLE telefones
ADD
(
	CONSTRAINT fk_telefones_construtoras
    FOREIGN KEY (cod_construtora)
    REFERENCES construtoras (cod_construtora)
);

-- Alterando Tabela Obras
ALTER TABLE obras
ADD
(
    CONSTRAINT fk_obras_construtoras
    FOREIGN KEY (cod_construtora)
    REFERENCES construtoras (cod_construtora)
);

-- Alterando Tabela Trabalhadores
ALTER TABLE trabalhadores
ADD
(
	CONSTRAINT fk_trabalhadores_obras
    FOREIGN KEY (cod_obra)
    REFERENCES obras (cod_obra)
);

-- Alterando Tabela Equipamentos
ALTER TABLE equipamentos
ADD
(
	CONSTRAINT fk_equipamentos_categorias 
    FOREIGN KEY (cod_categoria)
    REFERENCES categorias (cod_categoria)
);

-- Alterando Tabela Obras_Equipamentos
ALTER TABLE obras_equipamentos
ADD
(
	CONSTRAINT fk_obras_equipamentos_obras
    FOREIGN KEY (cod_obra)
    REFERENCES obras (cod_obra),

    CONSTRAINT fk_obras_equipamentos_equipamentos
    FOREIGN KEY (cod_equipamento)
    REFERENCES equipamentos (cod_equipamento)
    
);