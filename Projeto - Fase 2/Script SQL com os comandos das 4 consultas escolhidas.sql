---------------------------------------------
-- Banco de Dados
-- Projeto - Fase 2
-- Nicolas Dorneles Seidler
-- Data: 07/09/2024
---------------------------------------------
-- Script SQL com os comandos das 4 consultas escolhidas
---------------------------------------------
-- a) Selecionar CPFs e nomes dos trabalhadores que ganham mais do que 2.500,00; 
SELECT cpf, nome
FROM trabalhadores
WHERE salario > 2500.00;

-- b) Selecionar nomes e salários dos trabalhadores da empresa ALFA, ordenados em ordem alfabética crescente; 
SELECT trabalhadores.nome, trabalhadores.salario
FROM trabalhadores JOIN obras
  ON trabalhadores.cod_obra = obras.cod_obra
JOIN construtoras
  ON obras.cod_construtora = construtoras.cod_construtora
WHERE construtoras.nome = 'Construtora Alfa S.A.'
ORDER BY trabalhadores.nome ASC;

-- d) Calcular e exibir a folha de pagamento de cada obra. Uma folha de pagamento é determinada pela soma dos salários dos seus trabalhadores; 
SELECT cod_obra, SUM(salario) AS folha_pagamento
FROM trabalhadores
GROUP BY cod_obra;

-- e) Selecionar os equipamentos que nunca foram utilizados em nenhuma obra; 
SELECT * 
FROM equipamentos
WHERE cod_equipamento NOT IN (
    SELECT DISTINCT cod_equipamento
    FROM obras_equipamentos
);