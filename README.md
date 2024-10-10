# Introdução
O projeto da disciplina consiste na modelagem e na implementação de uma solução de banco de dados a partir do universo de discurso a seguir. 

# Universo de Discurso
Um conglomerado de construtoras deseja gerir suas obras e seus recursos. Para cada construtora deseja-se armazenar seu código, seu nome, um ou mais telefones e, opcionalmente, um nome fantasia.  Os trabalhadores têm seu CPF, seu nome e seu salário. Uma construtora possui múltiplas obras, e cada obra tem um código, um nome e seu endereço (logradouro, número e opcionalmente um complemento). Uma obra tem trabalhadores alocados e cada trabalhador está associado a uma única obra. Para cada obra são alocados um ou mais equipamentos que possuem código, nome e valor de uso diário. Cada equipamento pertence a uma determinada categoria. Um equipamento pode ser alocado em várias obras e, para isso, armazena-se a data de início e a data de término do uso do equipamento. Para as categorias, deseja-se armazenar se seu código e sua descrição. 

# Enunciado da Fase 01
a) A partir do Universo de Discurso fornecido no menu “Orientações Gerais”, produzir um modelo conceitual equivalente; 
b) Acrescente no modelo conceitual um atributo a sua escolha na entidade Construtora. 

# Enunciado da Fase 02
A partir do modelo conceitual gerado na Fase 1 e dos dados de exemplo fornecido logo abaixo (Dados Const. Alfa), produzir o esquema lógico relacional equivalente, compatível com o SGBD Oracle, bem como popular as tabelas e realizar algumas consultas solicitadas. 

 

1) Gerar o esquema lógico relacional na ferramenta BR Modelo; 

2) Criar as tabelas no SGDB Oracle, com seus respectivos atributos e constraints; 

3) Inserir os dados de exemplo, da construtora Alfa, disponíveis no arquivo PDF logo abaixo, em “Material Complementar” (arquivo “Dados Const. Alfa”);  

4) Criar (inserir) uma nova construtora, com o seu nome, e para essa nova construtora, insira os dados abaixo: 

          i. Criar 2 obras e 5 funcionários para cada uma dessas obras (i.e. 10 funcionários no total);  

          ii. Alocar pelo menos 4 equipamentos (de categorias diferentes) à primeira obra que você criou. 

5) Codificar em SQL quatro das seguintes consultas (escolha apenas 4 das 6 consultas abaixo; se você responder mais de 4, apenas as 4 primeiras serão consideradas): 

          a) Selecionar CPFs e nomes dos trabalhadores que ganham mais do que 2.500,00; 

          b) Selecionar nomes e salários dos trabalhadores da empresa ALFA, ordenados em ordem alfabética crescente; 

          c) Selecionar o total gasto em valores de diárias em uso de equipamentos da obra Condomínio Lagos no mês de março de 2022; 

          d) Calcular e exibir a folha de pagamento de cada obra. Uma folha de pagamento é determinada pela soma dos salários dos seus trabalhadores; 

          e) Selecionar os equipamentos que nunca foram utilizados em nenhuma obra; 

          f) Listar as categorias de equipamentos utilizadas nas obras da construtora ALFA. 

6) Produzir um arquivo de dados em formato JSON equivalente a todos os dados relacionados à construtora ALFA, incluindo suas obras e seus respectivos trabalhadores. Use o conceito de dados agregados (e não de relacionamentos via “_id”). Em outras palavras, deverá haver apenas 1 objeto principal (sendo todos os demais agregados deste objeto). 
