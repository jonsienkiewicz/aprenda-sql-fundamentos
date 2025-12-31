# Aula 01 — Dia 02: O tal SQL.

## Mas o que é SQL?

Structured Query Language, ou Linguagem de Consulta Estruturada ou SQL.

A ideia é usar essa linguagem para pesquisar coisasa e manipular coisas dentro de um sistema de gerenciamento de dados. Normalmente, relacional.

Você escreve um código em SQL, mas não é programador. O código do SQL é um código de consulta.

- Comandos - executados resultam em efeito persistente sobre dados e estruturas, ou controlam transações, conexões, sessões, etc. EX.: SELECT, INSERT, UPDATE, DELETE, CREATE TABLE, GRANT, etc.

Quando formos escrever uma consulta a gente sempre começa pelo comando.

- Cláusulas - componentes dos comandos. Em muitos casos, alguns são opcionais. EX.: FROM, WHERE, GROUP BY

Podemos adicioná-las dentro dos comandos.

- Expressões - os quais produzem tanto valores escalares, como tabelas consistindo de colunas e linhas. EX.: A + B, A*ABS(B-20)

Para deixar mais rico, podemos realizar transformações nos dados por meio de expressões.

- Predicados - especificam consições que podem ser avaliadas pela lógica, retornando verdadeiro, falso ou desconhecido. EX.: A>B, C BETWEEN 20 AND 200.

Fazer comparações lógicas dentro da QUERY.

- Queries - que retornam dados baseados em critérios específicos. EX.: SELECT COLUNA FROM TABELA.

Quando juntamos comando, cláusula, expressoes e predicados.

---

SQL é uma linguagem de consulta que usa comandos, clausulas, expressões e predicados para construir uma querie.

---

## Tipo de dados

| Linguagem natural | Spark/SQL |
|-------------------|-----------|
| Número (inteiro) | Int |
| Nmero (com casa decimal) | Float |
| Texto | String |
| Sim/Não | Boolean |
| Data | Date |
| Data - Hora | Timestamp |
| Vazio/Nulo | null |

---

# Outras estruturas Importantes

- Chaves primárias (Primary Key) e referenciais (Foreign Key)
  - PK, FK - garantem integridade e relacionamento consistente entre tabelas
  - Servem como uma documentação também
  - Exemplos: CPF, CNPJ, ID de cliente - PKs. Colocar um ID de cliente válido num pedido - FK.

Primary Keys servem para garantir que temos uma e apenas uma pessoa com aquele identificador.

Foreign Key é como ter uma chave primária dentro de uma outra tabela. Serve para criar associações entre tabelas.

- Constraints (restrições)
  - Assim como PKs e FKs, servem para garantir integridade
  - Não são mais muito utilizadas pois acabam onerando o SGBD
  - A mais comum é a NOT NULL

São restrições em alguns campos que podemos dizer, por exemplo, que o numero deve ser unico, que o numero precisa ser positivo e NOT NULL. Not Null significa que aquele campo não pode ficar vazio.

- Sequências
  - Servem para garantir que informações únicas sejam criadas, com continuidade e unicidade.
  - Normalmente são identificadores internos das aplicações

Quando o campo precisa ser preenchido por uma sequencia de dados específica.




