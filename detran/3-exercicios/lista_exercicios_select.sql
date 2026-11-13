-- =====================================================================
--  Banco Detran - LISTA DE EXERCÍCIOS DE SELECT
--  Antes de começar, rode:
--    1) detran/1-estrutura/detran.sql      (cria o banco e as tabelas)
--    2) detran/2-dados/detran_inserts.sql  (insere os dados fictícios)
--  Escreva o seu SELECT abaixo de cada questão.
-- =====================================================================

USE Detran;


-- =====================================================================
--  PARTE 1 - LIKE
-- =====================================================================

-- QUESTÃO 1 (LIKE)
-- Liste o nome de todos os proprietários cujo nome começa com a letra "J".
-- Sua resposta:


-- QUESTÃO 2 (LIKE)
-- Liste o nome dos proprietários que têm "Lima" em qualquer parte do nome.
-- Sua resposta:


-- QUESTÃO 3 (LIKE)
-- Mostre placa, marca e modelo dos veículos cujo modelo contém "CG".
-- Sua resposta:


-- QUESTÃO 4 (LIKE)
-- Liste os e-mails de contato que começam com "familia".
-- Sua resposta:


-- QUESTÃO 5 (LIKE com _)
-- Mostre as placas que começam com "NH" e têm o número 1 na 4ª posição.
-- (Dica: o _ substitui exatamente UM caractere.)
-- Sua resposta:



-- =====================================================================
--  PARTE 2 - IN e NOT IN
-- =====================================================================

-- QUESTÃO 6 (IN)
-- Liste placa, marca e modelo dos veículos das marcas Honda, Toyota ou Fiat.
-- Sua resposta:


-- QUESTÃO 7 (IN)
-- Liste os endereços (logradouro, bairro, cidade) das cidades Grajaú, Imperatriz e Balsas.
-- Sua resposta:


-- QUESTÃO 8 (NOT IN)
-- Liste placa, modelo e combustível dos veículos que NÃO são FLEX nem GASOLINA.
-- Sua resposta:


-- QUESTÃO 9 (NOT IN com subconsulta)
-- Qual benefício ainda não foi concedido a nenhum veículo?
-- Sua resposta:


-- QUESTÃO 10 (IN com subconsulta)
-- Liste o nome dos proprietários que moram em São Luís.
-- Sua resposta:



-- =====================================================================
--  PARTE 3 - AND, OR, NOT
-- =====================================================================

-- QUESTÃO 11 (AND)
-- Liste os automóveis de cor Branco.
-- Sua resposta:


-- QUESTÃO 12 (AND)
-- Liste as motocicletas fabricadas a partir de 2020.
-- Sua resposta:


-- QUESTÃO 13 (OR)
-- Liste os veículos de cor Preto ou Vermelho.
-- Sua resposta:


-- QUESTÃO 14 (AND + OR com parênteses)
-- Liste os veículos a DIESEL que sejam CAMINHONETE ou CAMINHAO.
-- Sua resposta:


-- QUESTÃO 15 (NOT)
-- Liste os veículos cuja categoria NÃO é PARTICULAR.
-- Sua resposta:



-- =====================================================================
--  PARTE 4 - BETWEEN
-- =====================================================================

-- QUESTÃO 16 (BETWEEN com números)
-- Liste os veículos fabricados entre 2018 e 2021.
-- Sua resposta:


-- QUESTÃO 17 (BETWEEN com datas)
-- Liste as ocorrências de roubo/furto registradas no ano de 2025.
-- Sua resposta:


-- QUESTÃO 18 (BETWEEN com datas)
-- Liste os proprietários nascidos entre 1980 e 1990.
-- Sua resposta:


-- QUESTÃO 19 (NOT BETWEEN)
-- Liste os benefícios cujo percentual de desconto NÃO está entre 1 e 50.
-- Sua resposta:



-- =====================================================================
--  PARTE 5 - VALORES VAZIOS (IS NULL / IS NOT NULL)
-- =====================================================================

-- QUESTÃO 20 (IS NULL)
-- Liste os contatos que não têm telefone fixo.
-- Sua resposta:


-- QUESTÃO 21 (IS NULL)
-- Liste os veículos que não têm data de licenciamento cadastrada.
-- Sua resposta:


-- QUESTÃO 22 (IS NOT NULL + AND)
-- Liste os proprietários que têm CNH e cuja CNH já está vencida (antes de 2026-11-13).
-- Sua resposta:



-- =====================================================================
--  PARTE 6 - ORDER BY (ASC e DESC)
-- =====================================================================

-- QUESTÃO 23 (ORDER BY ASC)
-- Liste o nome e a data de nascimento dos proprietários em ordem alfabética.
-- Sua resposta:


-- QUESTÃO 24 (ORDER BY DESC)
-- Liste os veículos do modelo mais novo para o mais antigo
-- (empate: ordenar pela placa em ordem crescente).
-- Sua resposta:


-- QUESTÃO 25 (ORDER BY DESC)
-- Liste os proprietários do MAIS NOVO para o MAIS VELHO.
-- Sua resposta:



-- =====================================================================
--  PARTE 7 - COUNT e DISTINCT
-- =====================================================================

-- QUESTÃO 26 (COUNT)
-- Quantos veículos estão cadastrados?
-- Sua resposta:


-- QUESTÃO 27 (COUNT de coluna)
-- Quantos veículos têm registro de roubo/furto?
-- Sua resposta:


-- QUESTÃO 28 (COUNT + GROUP BY + ORDER BY DESC)
-- Quantos veículos existem de cada tipo? Mostre do maior para o menor.
-- Sua resposta:


-- QUESTÃO 29 (DISTINCT)
-- Quais cidades aparecem nos endereços cadastrados (sem repetir)?
-- Sua resposta:


-- QUESTÃO 30 (DISTINCT)
-- Quais marcas de veículos existem no cadastro (sem repetir)?
-- Sua resposta:


-- QUESTÃO 31 (COUNT DISTINCT)
-- Quantas marcas diferentes existem no cadastro?
-- Sua resposta:



-- =====================================================================
--  PARTE 8 - INNER JOIN
-- =====================================================================

-- QUESTÃO 32 (INNER JOIN)
-- Mostre a placa, o modelo e o nome do proprietário de cada veículo.
-- Sua resposta:


-- QUESTÃO 33 (INNER JOIN com 3 tabelas)
-- Mostre o nome do proprietário, a cidade onde mora e o celular dele.
-- Sua resposta:


-- QUESTÃO 34 (INNER JOIN + WHERE)
-- Liste os veículos com ocorrência ATIVA de roubo/furto:
-- placa, modelo, número do BO, tipo da ocorrência e nome do proprietário.
-- Sua resposta:


-- QUESTÃO 35 (INNER JOIN + IN)
-- Liste os veículos de proprietários que moram em Grajaú ou Imperatriz.
-- Sua resposta:


-- QUESTÃO 36 (INNER JOIN + COUNT + GROUP BY)
-- Quantos veículos existem por cidade? Mostre da cidade com mais veículos para a com menos.
-- Sua resposta:



-- =====================================================================
--  PARTE 9 - LEFT JOIN
-- =====================================================================

-- QUESTÃO 37 (LEFT JOIN)
-- Liste TODOS os veículos e o nome do benefício que cada um recebe.
-- Veículos sem benefício devem aparecer com NULL.
-- Sua resposta:


-- QUESTÃO 38 (LEFT JOIN + IS NULL)
-- Usando LEFT JOIN, liste os veículos que NUNCA tiveram registro de roubo/furto.
-- Sua resposta:


-- QUESTÃO 39 (LEFT JOIN + COUNT)
-- Liste todos os benefícios e quantos veículos recebem cada um,
-- inclusive o benefício que não tem nenhum veículo (deve aparecer 0).
-- Sua resposta:



-- =====================================================================
--  PARTE 10 - RIGHT JOIN
-- =====================================================================

-- QUESTÃO 40 (RIGHT JOIN)
-- Usando RIGHT JOIN, liste TODOS os benefícios e as placas dos veículos que os recebem.
-- O benefício sem veículo deve aparecer com placa NULL.
-- Sua resposta:


-- QUESTÃO 41 (RIGHT JOIN)
-- Usando RIGHT JOIN, liste TODAS as ocorrências de roubo/furto
-- com a placa e o modelo dos veículos envolvidos, da mais recente para a mais antiga.
-- Sua resposta:



-- =====================================================================
--  PARTE 11 - DESAFIOS (misturando tudo)
-- =====================================================================

-- QUESTÃO 42 (INNER JOIN + LIKE + AND + ORDER BY)
-- Liste os veículos FLEX de proprietárias (sexo 'F') cujo nome começa com "A",
-- ordenados pelo nome da proprietária.
-- Sua resposta:


-- QUESTÃO 43 (INNER JOIN + BETWEEN + OR)
-- Liste os veículos que receberam benefício do tipo ISENCAO
-- ou cujo percentual de desconto está entre 5 e 10.
-- Sua resposta:


-- QUESTÃO 44 (INNER JOIN + DISTINCT + NOT IN)
-- Liste, sem repetir, as cidades dos proprietários que têm veículo
-- com benefício, exceto São Luís e Imperatriz.
-- Sua resposta:


-- QUESTÃO 45 (COUNT + GROUP BY + JOIN)
-- Quantos veículos cada proprietário possui? Mostre só o nome e a quantidade,
-- do que tem mais veículos para o que tem menos, e depois em ordem alfabética.
-- Sua resposta:

