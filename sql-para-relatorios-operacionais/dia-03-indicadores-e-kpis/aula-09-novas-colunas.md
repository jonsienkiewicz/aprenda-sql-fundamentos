# Novas colunas

Agora iremos ver como criamos uma coluna nova.

Até agora fizemos select de uma tabela sem alterar a consulta em si.

Estamos simplesmente puxando os dados sem necessariamente alterar colunas.

Vamos aprender como criar colunas novas a partir as colunas que já existem.

Dessa forma, podemos enriquecer nossos filtros.

---

Como fazemos para selecionar tabela de clientes?

SELECT * 

FROM clientes

---

Vamos supor que precisamos adicionar 10 pontos para cada pessoa.

Como fazemos para criar uma coluna nova que tenha a quantidade de pontos + 10?

Podemos simplesmente colocar uma virgula depois do asterisco "*", ou seja, estamos pegando todas as colunas e adicionando uma coluna a mais.

SELECT *,
        QtdePontos + 10

FROM clientes

Ou seja, da mesma maneira que antes selecionávamos apenas as colunas e as separávamos por virgula, podemos selecionar todas as colunas com o asterisco, colocar uma virgula depois dele e criar colunas novas.

Acabamos de criar uma coluna nova, que é a coluna QtdePontos, que já existe, + 10.

Isso é uma expressão.

Essa ação não está alterando a nossa tabela original, ou, não transformou o dado original, pois, estamos selecionando dados da tabela e, no mmento que executamos, ele faz essa conta e ela está apenas sendo exibida para nós. Não está sendo persistida, salva ou gravada em nenhum lugar.

Nada que fizemos até agora modifica nada no banco de dados.

Todas as consultas que fizemos até agora são de seleção, select, query, consulta. Não fizemos nenhuma operação de modificação.

Podemos colocar mais uma virgula e criar mais de uma coluna.

SELECT *,
        QtdePontos + 10,
        QtdePontos * 2

FROM clientes

Podemos criar quantas colunas quisermos, mas, a ideia é que não precisemos criar tantas colunas, pois, quanto maior o numero de colunas criadas, maior é a quantidade de memória consumida e recurso gasto.

---

Agora, é importante pensarmos sobre a quantidade de colunas exibidas. Não queremos sempre pegar todas as colunas.

Dessa forma, vamos trazer apenas o seguinte:


SELECT IdCliente,
        QtdePontos,
        QtdePontos + 10,
        QtdePontos * 2

FROM clientes

Fica mais fácil de enxergar o que estamos fazendo.

Para todas as linhas ele está fazendo a mesma operação.

---

## Apelido da coluna nova - AS

No próximo passo, identificamos que não é muito legal deixar espaços, simbolos no nome da coluna. Desse modo, podemos dar um nome/apelido para essas colunas que estamos criando.

Agora, vamos aprender a dar um nome para essas colunas

Exatamente depois do nome da coluna, usamos o "AS" que significa "alias" ou apelido.

Então, a query fica assim:

SELECT IdCliente,
        QtdePontos,
        QtdePontos + 10 AS QtdePontosPlus10,
        QtdePontos * 2 AS QtdePontosDouble

FROM clientes

Fica assim: expressão + AS + nome

Também funciona sem o AS, mas explícito é melhor do que implícito. Com o AS, sabemos exatamente onde acaba a expressão e inicia o nome.

---

## Funções no SQL

Conseguimos aplicar funções no SQL. Da mesma forma que no excel podemos aplicar funções, como, por exemplo, as que pegam o dia do ano, tudo que está em caixa alta/baixa, corta string, data atual, soma de uma coluna. Essas funções também existem no SQL.

### DtCriacao

SELECT IdCliente,
        QtdePontos,
        QtdePontos + 10 AS QtdePontosPlus10,
        QtdePontos * 2 AS QtdePontosDouble,
        DtCriacao

FROM clientes

Essa função DtCriacao não está no formato de data/hora, propriamente dita, ela está no formato de texto. Dessa forma, temos que converter esse formato de texto para um formato de data/hora

### Convertendo DtCriacao de texto para data/hora

Quais funções que existem no SQL?

Cada uma das engines, como SQL Server, MySQL, Postgress, etc. podem ter funções iguais, que funcionam do mesmo jeito e outras funções particulares de cada uma engine.

A oracle, por exemplo, implementa alguma função de nome diferente do MySQL, SQLite. As funções podem mudar de engine para engine, mas, a estrutura da QUERY é a mesma.

Para alterar o formato dos dados gerados pela função DtCriacao do modo texto para o formado data/hora, no SQLite, colocamos datetime(DtCriacao):

SELECT IdCliente,
        DtCriacao,
        datetime(DtCriacao)

FROM clientes

Dessa forma, estamos criando uma nova coluna, que se trata da aplicação de uma função em cima de uma coluna.

### Selecionar um pedaço de uma string

Outra função é a substr(DtCriacao) que pegamos apenas uma parte da string.

Se você quer pegar os primeiros 10 elementos de uma string, por exemplo, fazemos:

substr(DtCriacao, 1, 10)

Pegamos do elemento 1 ao 10 da string.

### Como saber o dia da semana dessa data?

Função strftime()

A função strftime no SQLite retorna a data formatada de acordo com a string de formato especificada como primeiro argumento. Exemplo:

primeiro argumento sendo '%d' > dia do mês: 01 a 31
primeiro argumento sendo '%w' > dia da semana: 0 a 6 com 0 sendo domingo

---

Sempre que for possível, é bom transformar dados que representam datas que estejam no data type de string em um data type de data, pois, dessa forma, é mais fácil realizar operações com datas do que com texto.