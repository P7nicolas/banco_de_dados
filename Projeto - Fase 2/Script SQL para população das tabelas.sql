---------------------------------------------
-- Banco de Dados
-- Projeto - Fase 2
-- Nicolas Dorneles Seidler
-- Data: 07/09/2024
---------------------------------------------
-- Script SQL para população das tabelas
---------------------------------------------
-- Tabela Construtoras
INSERT INTO construtoras (cod_construtora, nome, nome_fantasia, data_fundacao)
VALUES (10, 'Construtora Alfa S.A.', 'Alfa Incorporações', to_date('23/06/2020','DD/MM/YYYY'));

-- Tabela Telefones
INSERT INTO telefones (telefone, cod_construtora)
VALUES ('(51) 3333-3334', 10);
INSERT INTO telefones (telefone, cod_construtora)
VALUES ('(51) 3333-3335', 10);
INSERT INTO telefones (telefone, cod_construtora)
VALUES ('(51) 3333-3336', 10);

-- Tabela Categorias
INSERT INTO categorias (cod_categoria, descricao)
VALUES (1, 'Concretagem');
INSERT INTO categorias (cod_categoria, descricao) 
VALUES (2, 'Acesso e Elevação');
INSERT INTO categorias (cod_categoria, descricao)
VALUES (3, 'Geradores e Compressores');
INSERT INTO categorias (cod_categoria, descricao)
VALUES (4, 'Andaimes');
INSERT INTO categorias (cod_categoria, descricao)
VALUES (5, 'Ferramenta Elétrica');

-- Tabela Obras
INSERT INTO obras (cod_obra, nome, end_logradouro, end_numero, end_complemento, cod_construtora) 
VALUES (115, 'Condomínio dos Lagos', 'Travessa dos Lagos', '100', 'Norte', 10);
INSERT INTO obras (cod_obra, nome, end_logradouro, end_numero, end_complemento, cod_construtora) 
VALUES (116, 'Condomínio Araras', 'Avenida Rio Grande', '22', 'Lado A', 10);

-- Tabela Trabalhadores
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra)
VALUES ('101.101.101-34', 'José Chaves', 2200.00, 115);
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra) 
VALUES ('102.102.102-91', 'Pedro Passos', 3502.18, 115);
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra) 
VALUES ('103.103.103-18', 'Maria Aparecida', 2800.87, 115);
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra) 
VALUES ('104.104.104-52', 'Carlos Dutra', 3100.00, 116);
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra)
VALUES ('105.105.105-85', 'Mário Pires', 4323.29, 116);

-- Tabela Equipamentos
INSERT INTO equipamentos (cod_equipamento, nome, valor, cod_categoria)
VALUES (301, 'Betoneira', 100.00, 1);
INSERT INTO equipamentos (cod_equipamento, nome, valor, cod_categoria)
VALUES (302, 'Cortadora de Piso', 10.00, 1);
INSERT INTO equipamentos (cod_equipamento, nome, valor, cod_categoria)
VALUES (303, 'Mangote', 30.50, 1);
INSERT INTO equipamentos (cod_equipamento, nome, valor, cod_categoria) 
VALUES (304, 'Guincho', 250.00, 2);
INSERT INTO equipamentos (cod_equipamento, nome, valor, cod_categoria)
VALUES (305, 'Gerador', 451.00, 3);
INSERT INTO equipamentos (cod_equipamento, nome, valor, cod_categoria)
VALUES (306, 'Piso Metálico', 150.00, 4);
INSERT INTO equipamentos (cod_equipamento, nome, valor, cod_categoria) 
VALUES (307, 'Furadeira de Bancada', 65.00, 5);
INSERT INTO equipamentos (cod_equipamento, nome, valor, cod_categoria) 
VALUES (308, 'Parafusadeira', 37.00, 5);
INSERT INTO equipamentos (cod_equipamento, nome, valor, cod_categoria) 
VALUES (309, 'Plaina', 25.00, 5);

-- Tabela Obras_Equipamentos
INSERT INTO obras_equipamentos (cod_obra, cod_equipamento, inicio_cont, termino_cont)
VALUES (115, 301, to_date('18/03/2022', 'DD/MM/YYYY'), to_date('24/10/2022', 'DD/MM/YYYY'));
INSERT INTO obras_equipamentos (cod_obra, cod_equipamento, inicio_cont, termino_cont)
VALUES (115, 304, to_date('20/04/2022', 'DD/MM/YYYY'), to_date('02/08/2022', 'DD/MM/YYYY'));
INSERT INTO obras_equipamentos (cod_obra, cod_equipamento, inicio_cont, termino_cont)
VALUES (115, 306, to_date('06/07/2021', 'DD/MM/YYYY'), to_date('18/07/2021', 'DD/MM/YYYY'));
INSERT INTO obras_equipamentos (cod_obra, cod_equipamento, inicio_cont, termino_cont)
VALUES (115, 307, to_date('04/03/2022', 'DD/MM/YYYY'), to_date('20/03/2022', 'DD/MM/YYYY'));
INSERT INTO obras_equipamentos (cod_obra, cod_equipamento, inicio_cont, termino_cont)
VALUES (115, 309, to_date('04/08/2021', 'DD/MM/YYYY'), to_date('10/08/2021', 'DD/MM/YYYY'));
INSERT INTO obras_equipamentos (cod_obra, cod_equipamento, inicio_cont, termino_cont)
VALUES (116, 304, to_date('22/10/2022', 'DD/MM/YYYY'), to_date('25/10/2022', 'DD/MM/YYYY'));
INSERT INTO obras_equipamentos (cod_obra, cod_equipamento, inicio_cont, termino_cont)
VALUES (116, 305, to_date('07/03/2022', 'DD/MM/YYYY'), to_date('10/03/2022', 'DD/MM/YYYY'));
INSERT INTO obras_equipamentos (cod_obra, cod_equipamento, inicio_cont, termino_cont)
VALUES (116, 306, to_date('12/09/2022', 'DD/MM/YYYY'), to_date('21/09/2022', 'DD/MM/YYYY'));
INSERT INTO obras_equipamentos (cod_obra, cod_equipamento, inicio_cont, termino_cont)
VALUES (116, 307, to_date('16/08/2022', 'DD/MM/YYYY'), to_date('24/08/2022', 'DD/MM/YYYY'));
INSERT INTO obras_equipamentos (cod_obra, cod_equipamento, inicio_cont, termino_cont)
VALUES (116, 308, to_date('23/10/2022', 'DD/MM/YYYY'), to_date('25/10/2022', 'DD/MM/YYYY'));

---------------------------------------------
-- Criando dados para as tabelas
---------------------------------------------
-- Tabela Construtoras
INSERT INTO construtoras (cod_construtora, nome, nome_fantasia, data_fundacao)
VALUES (23, 'Nicolas Seidler S.A.', 'Nicolas Incorporações', to_date('23/07/2021','DD/MM/YYYY'));

-- Tabela Obras
INSERT INTO obras (cod_obra, nome, end_logradouro, end_numero, end_complemento, cod_construtora) 
VALUES (707, 'Condomínio dos Mares', 'Rua Rio Grande do Sul', '79', 'Bloco A', 23);
INSERT INTO obras (cod_obra, nome, end_logradouro, end_numero, end_complemento, cod_construtora) 
VALUES (708, 'Residencial Bom Te Ver', 'Avenida Porto Alegre', '1909', 'Lado Sul', 23);

-- Tabela Trabalhadores
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra)
VALUES ('110.110.110-25', 'Raphael Claus', 1234.32, 707);
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra) 
VALUES ('120.120.120-52', 'Wilton Sampaio', 1562.00, 707);
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra) 
VALUES ('130.130.130-87', 'Sandro Araújo', 2698.90, 707);
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra) 
VALUES ('140.140.140-36', 'Edina Batista', 2500.54, 707);
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra)
VALUES ('150.150.150-74', 'Rejane Silva', 2499.99, 707);
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra)
VALUES ('160.160.160-22', 'Anderson Daronco', 1356.00, 708);
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra) 
VALUES ('170.170.170-17', 'Ana Oliveira', 1900.45, 708);
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra) 
VALUES ('180.180.180-18', 'Maria Aparecida', 2300.87, 708);
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra) 
VALUES ('190.190.190-31', 'Bráulio Machado', 2500.00, 708);
INSERT INTO trabalhadores (cpf, nome, salario, cod_obra)
VALUES ('100.100.100-10', 'Neuza Back', 1521.65, 708);

-- Tabela Obras_Equipamentos
INSERT INTO obras_equipamentos (cod_obra, cod_equipamento, inicio_cont, termino_cont)
VALUES (707, 301, to_date('03/03/2023', 'DD/MM/YYYY'), to_date('25/03/2023', 'DD/MM/YYYY'));
INSERT INTO obras_equipamentos (cod_obra, cod_equipamento, inicio_cont, termino_cont)
VALUES (707, 304, to_date('08/08/2023', 'DD/MM/YYYY'), to_date('25/08/2023', 'DD/MM/YYYY'));
INSERT INTO obras_equipamentos (cod_obra, cod_equipamento, inicio_cont, termino_cont)
VALUES (707, 305, to_date('20/04/2023', 'DD/MM/YYYY'), to_date('24/04/2023', 'DD/MM/YYYY'));
INSERT INTO obras_equipamentos (cod_obra, cod_equipamento, inicio_cont, termino_cont)
VALUES (707, 305, to_date('15/06/2023', 'DD/MM/YYYY'), to_date('15/07/2023', 'DD/MM/YYYY'));