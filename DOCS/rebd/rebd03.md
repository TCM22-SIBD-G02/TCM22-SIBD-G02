## 1NF

#### Utilizador

|              |                |           |       |
| :----------- | :------------- | :-------- | :---- |
| idUtilizador | nomeUtilizador | passsword | email |
|              |                |           |       |

#### Filme

|         |        |         |      |               |           |             |         |
| :------ | :----- | :------ | :--- | :------------ | :-------- | :---------- | :------ |
| idFilme | título | duração | ano  | #idRealizador | #idGenero | publicoAlvo | sinopse |
|         |        |         |      |               |


#### Realizador

|              |                |
| :----------- | :------------- |
| idRealizador | nomeRealizador |
|              |                |

#### Género

|          |            |
| :------- | :--------- |
| idGenero | nomeGenero |
|          |            |

#### Séries

|         |             |           |
| :------ | :---------- | :-------- |
| idSérie | #idConteúdo | Temporada |
|         |             |           |

#### Atores Séries 

|         |         |
| :------ | :------ |
| IdSérie | #idAtor |
|         |         |

#### Episodios

|            |          |        |         |
| :--------- | :------- | :----- | :------ |
| idEpisodio | #idSerie | Título | Duracao |
|            |          |        |         |

#### Classificação

|                 |            |      |         |
| :-------------- | :--------- | :--- | :------ |
| idClassificacao | idConteúdo | like | dislike |
|                 |            |      |         |

#### Atores

|        |          |
| :----- | :------- |
| idAtor | nomeAtor |
|        |          |

## 2NF

Todas as tabelas anteriores, já se encontram na 2NF, logo apenas foi criada uma nova tabela. A tabela Temporada que foi criada com o intuito de armazenar informações específicas sobre cada temporada de uma série. 

#### Temporadas

|              |         |             |               |
| :----------- | :------ | :---------- | :------------ |
| idTemporadas | idSerie | anoProducao | classificacao |
|              |         |             |               |

## 3NF

#### Filme 

|         |        |         |      |              |          |         |
| :------ | :----- | :------ | :--- | :----------- | :------- | :------ |
| idFilme | título | duração | ano  | idRealizador | idGenero | sinopse |
|         |        |         |      |              |          |         |

#### Séries

|         |            |
| :------ | :--------- |
| idSérie | idConteúdo |
|         |            |

#### Temporadas

|              |         |               |
| :----------- | :------ | :------------ |
| idTemporadas | idSerie | classificacao |
|              |         |               |

#### Temporadas

|              |         |               |
| :----------- | :------ | :------------ |
| idTemporadas | idSerie | classificacao |
|              |         |               |

As restantes tabelas permanecem sem qualquer tipo de alteração. 

## Forma normal de Boyce Codd

#### Utilizador

|              |                |          |       |
| :----------- | :------------- | :------- | :---- |
| idUtilizador | nomeUtilizador | password | email |
|              |                |          |       |

#### Conteúdo

| Idconteúdo |         |              |          |
| :--------- | :------ | :----------- | :------- |
| título     | duração | idRealizador | idGenero |
|            |         |              |          |

#### Realizador

|              |                |
| :----------- | :------------- |
| idrealizador | nomerealizador |
|              |                |

#### Género

|          |            |
| :------- | :--------- |
| idgenero | Nomegenero |
|          |            |

#### Séries 

|         |            |
| :------ | :--------- |
| idsérie | idconteúdo |
|         |            |

#### Atores séries

|         |        |
| :------ | :----- |
| idsérie | idator |
|         |        |

#### Episódios

| Idepisódio |        |         |
| :--------- | :----- | :------ |
| idsérie    | título | duração |
|            |        |         |

#### Classificação

| Idclassificação |      |         |
| :-------------- | :--- | :------ |
| idconteúdo      | like | dislike |
|                 |      |         |

#### Atores

|        |          |
| :----- | :------- |
| idAtor | nomeator |
|        |          |

#### Temporadas

|         |               |
| :------ | :------------ |
| idsérie | classificação |
|         |               |


---
Menu de navegação
< Previous | [^ Main](https://github.com/TCM22-SIBD-G02/TCM22-SIBD-G02) | [Next >](rebd04.md)
:--- | :---: | ---: 



