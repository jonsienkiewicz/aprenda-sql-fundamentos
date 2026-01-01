# Vamos escrever nossa primeira query.

## SELECT

Toda consulta de tabelas precisa ao menos de duas instruções em sua sintaxe. A primeira é a SELECT, onde é passado uma lista de colunas que se deseja obter, bem como realizar a criação de novas colunas e cálculos.

SELECT 'Olá mundo!'

SELECT 2 * 132

---

Criamos um arquivo novo com extenção .sql, depois apertamos cntrl + shift + q. Aparecerá uma caixa de diálogo perguntando qual database iremos utilizar. Em sequência, selecionamos a database adequada.

---

O SELECT não precisa de tabela. Podemos selecionar coisas, fazer contas, etc.

---

No cabeçalho da tabela que é mostrada à direita, mostra a expressão seelcionada e embaixo, o resultado dessa expressão.

---

Como selecionar uma tabela?

SELECT * FROM clientes

SELECT > quero selecionar

´* > tudo´

FROM > de algum lugar

clientes > tabela

Aqui, estamos selecionando tudo de um local chamado clientes.

Dentro do banco de dados chamado database, que é o banco de dados que selecionamos ao realizar a primeira consulta, existe uma tabela chamada clientes.

Ao apertar cntrl + shift + q, executamos essa querie que mostra todas as colunas de todos os clientes. Estamos selecionando com o "*" todas as colunas.

---

## FROM

Esta é a segunda instrução necessária para realizar uma consulta simples. Devemos informar a partir de qual tabela desejamos obter os dados.

Assim, para selecionar todas as clunas de uma tabela, temos:

SELECT *
FROM tabela

lê-se: selecione todas as colunas da tabela clientes

Note que o * (asterisco) representa todas as colunas.

---

Caso você não queira todas as tabelas, por exemplo, queria apenas o IdCliente e QtdePontos.


No lugar do *, escreva "IdCliente, QtdePontos".

O asterisco seleciona todas as colunas e também podemos selecionar apenas as colunas que quisermos, usando o nome delas, separadas por vírgula.

---

