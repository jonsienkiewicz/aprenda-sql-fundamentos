# FROM

## Como descobrir quais são as tabelas que estão disponíveis num banco de dados?

Criamos um novo arquivo .sql e escrevemos em uma linha ".tables". Depois, apertamos Cntrl + shift + q. Após escolhermos o banco de dados, um novo arquivo SQLite abrirá, mostrando as tabelas dessa instância, dessa forma:

| clientes | produtos | transacao_produto | transacoes |
|----------|----------|-------------------|------------|

Nem todos os banos de dados usam essa sintaxe. No mySQL e Postgress, por exemplo, usamos algo omo:

SHOW TABLES

Resumindo, criamos um arquivo e dentro desse arquivo, escrevemos ".table" e apertamos Cntrl + shift + Q.

O nome do arquivo não importa, o que importa é o código que escrevemos dentro dele.

---

Dado o contexto, vamos supor que queremos ver a tabela "produtos". Nesse caso, criamos um outro arquivo: "03_select_from.sql"

---

SELECT *
FROM produtos

LIMIT 10

De uma query para outra, mudamos apenas o nome da tabela.

---

Até agora, só estamos selecionando colunas. Estamos limitando nossas querys para escolher apenas quais colunas queremos, por exemplo:

SELECT IdProduto, DescProduto
FROM produtos

---

## Como fazemos para selecionar as linhas de uma tabela?

Primeiramente, já descobrimos que podemos usar o "LIMIT".

O LIMIT é o último código da QUERY.

Quala  diferença do LIMIT para o TOP. O top é usado em outros banco de dados. O LIMIT é mais geral.

O * seleciona todas as colunas e, caso não usassemos o LIMIT, estaríamos selecionando todas as linhas, ou seja, mostrando toda a tabela:

SELECT *
FROM produtos

Se não queremos mostrar toda a tabela em nossa consulta, podemos:

SELECT IdProduto, DescCategoriaProduto
FROM produtos
LIMIT 2

No SELECT escolhemos quais são as colunas e no LIMIT escolhemos as linhas.

---

Comentário:

Podemos escrever 

SELECT 
        IdProduto, 
        DescCategoriaProduto

/*
    isso é um comentário
    de
    multiplas
    linhas
*/

FROM produtos
-- isso nao vai ser executado
-- outro comentario ignorado
LIMIT 2

---
