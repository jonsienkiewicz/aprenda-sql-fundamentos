# Nossa primeira query

SELECT 'Olá mundo!'

SELECT 2 * 136

O comando select pode ser usado sozinho sem a cláusula FROM.

Para selecionar uma tabela. Sempre que usamos o select, estamos selecionando as colunas de uma tabela.

SELECT * FROM tabela > o comando select está selecionando todas as colunas da tabela.

SELECT * FROM cliente > Podemos ler esse código em linguagem natural da seguinte forma: "selecione todas colunas da tabela cliente"

---

taxonomia - quando padronizamos nomes de colunas que tem função parecida.

---

o ; é usamdo quando queremos escrever mais de uma query/consulta em um unico arquivo.

o ; serve para separar as consultas

Ou seja, podemos usar isso na vida real, fazendo criação, alteração, insert e update numa mesma tabela, tudo isso num único arquivo, estando essas consultas, separadas por um ";".

Não há limites para consultas num mesmo arquivo.

As consultas/códigos executam o fluxo separadamente, ou seja, são "disparados" pelo IDE, conectadas ao SGDB, o SGDB irá trazer os dados para o IDE e o ide irá nos mostrar, uma de cada vez. portanto, se você iniciou o seu arquivo com uma query de um SELECT, por exemplo, este comando será o primeiro a ser executado.