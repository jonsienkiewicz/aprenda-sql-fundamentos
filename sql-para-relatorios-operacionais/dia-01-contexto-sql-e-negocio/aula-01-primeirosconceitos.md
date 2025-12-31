# Aula 01 — Dia 01: Primeiros Conceitos

## O que vamos abordar hoje?

1. Introdução e setup
- Acesso aos dados
- Visual Studio Code
- Extenções para SQLite

2. Primeiras consultas (DQL)
- SELECT
- FROM
- WHERE
- CASE WHEN

Primeiras query's

### O que vamos abordar até o fim do curso

3. Agregações (aprender a trabalhar com mais de uma tabela)
- Funções de agregações
- GROUP BY
- ORDER BY
- HAVING

4. JOINs (aprender a trabalhar com mais de uma tabela)
- LEFT
- RIGHT
- INNER

5. Juntando dados com UNIONs (como fazer união de tabelas e empilhar tabelas)

6. Subqueries (Como vamos fazer QUERYs dentro de QUERYs, as famosas CTEs)
- CTE

7. Window Functions (parte mais avançada da parte de SELECT)
- OVER
- PARTITION BY
- LAG
- LEAD
- ROW_NUMBER

Até aqui estamos fazendo consultas, manipulando os dados sem salva-los no banco.

---

A partir daqui, começamos a salvar dados no banco de dados. podemos salvar dados de uma consulta ou de outras tabelas.

8. DDL (Data Definition Language)
- CREATE
- DROP
- TRUNCATE

Aqui, alteramos uma tabela. Inserir, deletar e atualizar.

9. DML (|Data Manipulation Language)
- INSERT
- DELETE
- UPDATE

---

## O que é um banco de dados?

  Uma lista de compras pode ser uma tabela. Numa lista de compras, cada item é uma linha. Cada uma dessas linhas tem um produto. Ao lado do nome do produto, você pode ter a quantidade do que tem que comprar. Uma coisa é o nome do produto e outra é a quantidade que precisa comprar. Essas duas coisas são informaçõe distintas, mas que precisam estar separadas.

  Agora já sabemos o nome do produto e a quantidade que temos que comprar.

  Seguindo essa lógica, em uma tabela, temos a Linha ou Registro e temos a Coluna ou Campo.

  - Linha/Registro

  A linha ou registro, representam uma entidade. Podemos dizer que ela representa uma "coisa". Em uma tabela de clientes, essa "coisa" seria um cliente. Em uma tabela de vendas, a entidade representa uma venda.

  - Coluna/Campo

  As tabelas existem para representar entidades ou coisas do mundo real. 
  
  Cada coluna/Campo dessa tabela é uma caracteristica dessa "coisa".

  Cada coluna é uma caracteristica.

  ---

  Um banco de dados é uma ferramenta que permite termos várias tabelas dentro dela. O banco de dados não representa apenas uma tabela de compras, por exemplo, ele representa um conjunto de coisas. Pode ser um sistema que representa alguma coisa da nossa realidade, como uma, loja, ou um Café.

  Trata-se de um conjunto de entidades que representam uma realidade. Repositório de tabelas que em conjunto representam algioo na realidade, ou alguma dinamica que acontece na vida real.

  O nome disso é Sistema de Gerenciamento de Banco de Dados (SGBD) e ele pode representar várias coisas da realidade, como um jogo.

  ---

  ## Sabores de engine (SGBD)

  Existem vários tipos de engines de SGBD relacionais: SQLite, MySQL, PostgreSQL, etc.

  O banco de dados não importa, por que, vamos usar o SQL, que é uma linguagem usada por todos esses bancos de dados relacionais.

  ## Algumas IDEs (Ambiente de Desenvolvimento Integrado)

  Visual Studio Code, Eclipse, PyCharm, Sublime Text, databricks;

  Aqui é onde iremos escrever o SQL. A IDE irá pegar o código SQL e enviar para o motor (SGBD)

  O desenvolvedor escreve o código SQL nas IDEs, como DataLake, e esse ambiente de desenvolvimento integrado faz uma conexão com o sistema de gerenciamento de banco de dados, que processa o código e retorna os dados .

  ## Usaremos

  Nesse projeto usaremos VisualStudioCode e SQLite.

  ## Diferença entre Instancia do Banco, Database, Tabela e Registros.

- Registros:

São as linhas da minha tabela.

- Tabela

Representação de alguma coisa, entidade.

- Instancia de Banco de Dados.

É quando temos um banco de dados no SQLite. E dentro desse banco de dados, temos Databases ou Schemas.

Dentro de uma instancia, podemos ter vários databases. É como se fosse o serviço do banco de dados SQL.

- Database

É onde vamos organizar as tabelas.

---

Instancia é o software funcionando, onde temos o database que irá organizar as tabelas.

