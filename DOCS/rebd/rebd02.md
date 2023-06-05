## Modelo relacional 

#### Utilizador

|                 |            |         |         |        |            |             |         |
| :-------------- | :--------- | :------ | :------ | :----- | :--------- | :---------- | :------ |
| nomeUtilizador  | password   | email   |         |        |            |             |         |
| Filme           |            |         |         |        |            |             |         |
| idFilme         | título     | duracao | ano     | Género | Realizador | publicoAlvo | sinopse |
| Série           |            |         |         |        |            |             |         |
| idSerie         | temporada  | atores  |         |        |            |             |         |
| Episódios       |            |         |         |        |            |             |         |
| idEpisódio      | idSérie    | título  | Duração |        |            |             |         |
| Classificacao   |            |         |         |        |            |             |         |
| idClassificacao | idConteudo | like    | dislike |        |
|                 |            |         |         |        |


---
Menu de navegação
< Previous | [^ Main](https://github.com/exemploTrabalho/reportSIBD/) | [Next >](rebd03.md)
:--- | :---: | ---: 