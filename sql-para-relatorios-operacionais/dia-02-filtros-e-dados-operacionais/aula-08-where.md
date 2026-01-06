# Como fazemos para filtrar dados no SQL?

SELECT (comando) * 

FROM (clausula) produtos 

WHERE (clausula) DescCategoriaProduto = 'rpg' 

Lemos assim: Selecione todas as colunas da tabela produtos aonde a categoria do produto é igual a rpg.

Inserimos mais uma cláusula depois do FROM. A cláusula WHERE.

'rpg' > aspas simples são usadas para acessar o valor de um campo.

aspas duplas estamos nos referenciando a um campo e não ao valor de um registro.

---

Agora, mais do que apenas selecionar de forma aleatória as linhas, agora, estamos adicionando um critério:

WHERE (clausula) DescCategoriaProduto = 'rpg'

---

## Selecione todos os clientes com email cadastrado:

SELECT *
FROM clientes

WHERE flEmail = '1'

## Selecione todas transações de 50 pontos (exatos)

SELECT *
FROM transacoes

WHERE qtdePontos = '50'

## Selecione todos os clientes com mais de 500 pontos

SELECT *
FROM clientes

WHERE qtdePontos > 500

## Selecione produtos que contêm 'churn' no nome

SELECT *
FROM produtos

WHERE DescNomeProduto LIKE '%churn%'

Podemos usar também operadores condicionais, como OR e AND.

nesse exemplo usaríamos asim: 

SELECT *
FROM produtos

WHERE DescNomeProduto = 'Churn_10pp'
OR DescNomeProduto = 'Churn_2pp'
OR DescNomeProduto = 'Churn_5pp'

Podemos também usar outro operador, que nos permite usar um a lista de valores:

SELECT *
FROM produtos

WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp')

Quando existem muitos valores para serem adicionados na lista, podemos evitar adicionar um a um usando o operador LIKE:

SELECT *
FROM produtos

WHERE DescNomeProduto LIKE '%churn%'

o % é um coringa. Quando adicionado ao final da palavra que está sendo filtrada, significa que o valor filtrado inicia com aquela palavra e o final não interessa.

Não é case sensitive.

O problema do LIKE é que ele é mais custoso. Ele precisa comparar todas as strings. Se você sabe exatamente o que buscar, melhor usar o IN. Principalmente em bases de dados grande. O melhor de todos é a igualdade.

A melhor forma de escrever essa query seria buscar diretamente na categoria do produto e isso depende muito mais de como a base de dados foi construida/organizada:

WHERE DescCategoriaProduto = "churn_model"

Essa forma de pesquisa é menos custosa em termos de tempo de processamento computacional.

---

O WHERE filtra linhas e o SELECT filtra as colunas.

---

Vimos, na tabela transacoes, que temos uma chave primária (PK - primary key) que identifica cada uma das transações. Nela vimos também que existe a coluna IdCliente, que é uma chave primária em outra tabela, que é a tabela clientes. Mas, como nessa tabela transacoes, o IdCliente pode repetir, a chamamos de chave estrangeira, ou, FK - foreign key.


