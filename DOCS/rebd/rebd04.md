# C4 : Esquema Relacional 

## Relações

### Tabela "Filme"

#### DESCRIÇÃO 

A tabela "filme" temos "idFilme" "titulo" "duraçãop" "ano" "publicoAlvo" "sinopse" "idGenero" "idRealizador" nesta tabela temos as ligações necessarias para termos uma pequena descrição dos filmes, estas parametros serao baseados em sites como por exemplo o IMBV onde temos todas as informações necessarias. e temos as ligações entre o genero atraves do "idGenero" e também ligação com o realizador atraves de "idRealizador"

#### COLUNAS 

| Nome          | Descrição                   | Domínio      | por Omissão | Automático | Nulo |
| :------------ | :-------------------------- | :----------- | :---------- | :--------- | :--- |
| idFilme       | identificador do Filme      | INT(11)      | -           | Sim        | Não  |
| titulo        | Título do Filme             | VARCHAR(255) | -           | Sim        | Sim  |
| duracao       | Duração do Filme            | TIME         | -           | Não        | Sim  |
| ano           | Ano de Lançamento           | INT(11)      | -           | Não        | Sim  |
| publicoAlvo   | Idade permitida             | VARCHAR(255) | -           | Não        | Sim  |
| sinopse       | Resumo do Filme             | TEXT         | -           | Não        | ---  |
| idGenero      | identificador do Género     | INT(11)      | -           | Não        | Sim  |
| idRealiizador | identificador do Realizador | INT(11)      | -           | Não        | Sim  |

#### RESTRIÇÕES DE INTEGRIDADE 

- **Chave Primária**: 

| Chave Primária |
| -------------- |
| idFilme        |


- **Unicidade** (valores únicos)*:

| Nome         | Coluna(s)    | Indexar |
| ------------ | ------------ | ------- |
| idFilme      | idFilme      | Sim     |
| idGenero     | idGenero     | Sim     |
| idRealizador | idRealizador | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome         | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ------------ | --------- | ------------------- | ------------------------- | ------- |
| idGenero     | -         | Tabela Genero       | id                        | Sim     |
| idRealizador | -         | Tabela Realizador   | id                        | Sim     |

- **Atributos** (check)*:

| Nome          |
| ------------- |
| idFilme       |
| titulo        |
| duracao       |
| ano           |
| publicoAlvo   |
| sinopse       |
| idGenero      |
| idRealiizador |

### Tabela "atores"

#### DESCRIÇÃO 

Na tabela "atores" a  mesma é composta por "idAtores" e "nomeAtores", assim que um ator for adicinado a base de dados ao mesmo será atribuido um id e seá apartir do mesmo que o mesmo sera identificado.

#### COLUNAS 

| Nome       | Descrição             | Domínio      | por Omissão | Automático | Nulo |
| :--------- | :-------------------- | :----------- | :---------- | :--------- | :--- |
| idAtores   | identificador do Ator | INT(11)      | -           | Sim        | Não  |
| nomeAtores | nome do Ator          | VARCHAR(255) | -           | Não        | Não  |


#### RESTRIÇÕES DE INTEGRIDADE 

- **Chave Primária**: 

| Chave Primária |
| -------------- |
| idAtores       |

- **Unicidade** (valores únicos)*:

| Nome     | Coluna(s) | Indexar |
| -------- | --------- | ------- |
| idAtores | idAtores  | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ---- | --------- | ------------------- | ------------------------- | ------- |
| -    | -         | -                   | -                         | -       |

- **Atributos** (check)*:

| Nome       |
| ---------- |
| idAtores   |
| nomeAtores |


### Tabela "Series"

#### DESCRIÇÃO 

A tabela "series" nesta tabela o que temos e "idSeries" "Temporadas" "idConteudo" nesta tabela temos um id da serie, temos as temporadas que existem nas mesmas e um id conteudo.

#### COLUNAS 

| Nome       | Descrição                 | Domínio | por Omissão | Automático | Nulo |
| :--------- | :------------------------ | :------ | :---------- | :--------- | :--- |
| idSerie    | identificador da série    | INT(11) | -           | Sim        | Não  |
| Temporada  | Nº da temporada           | INT(11) | -           | Não        | Sim  |
| idConteudo | identificador do conteudo | INT(11) | -           | Sim        | Sim  |

#### RESTRIÇÕES DE INTEGRIDADE 

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| idSerie   |

- **Unicidade** (valores únicos)*:

| Nome    | Coluna(s) | Indexar |
| ------- | --------- | ------- |
| idSerie | idSerie   | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome       | Coluna(s)  | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ---------- | ---------- | ------------------- | ------------------------- | ------- |
| idConteudo | idConteudo | Tabela Conteudo     | id                        | Sim     |

- **Atributos** (check)*:

| Nome       | Coluna(s)  |
| ---------- | ---------- |
| idSeries   | idSeries   |
| Temporada  | Temporada  |
| idConteudo | idConteudo |

### Tabela "temporada"

#### DESCRIÇÃO 

A tabela "Temporada" temos "idTemporada" onde e atribuido um id a cada temporada, um "idSeries" onde temos a associação mencionada anteriormente onde ligamos o "idTemporada" ao "idSerie" de modo a navegar de forma mais simples e rápida, temos "anoProdução" que mostra o ano de produção pois existem inumeras series que ocorrem ao longo dos anos e podemos ver as diferenças dos atores e a diferença de anos e "Classificação" onde temos a classificação em que a temporada se encontra.

#### COLUNAS 

| Nome        | Descrição                  | Domínio      | por Omissão | Automático | Nulo |
| :---------- | :------------------------- | :----------- | :---------- | :--------- | :--- |
| idTemporada | identificador da temporada | INT(11)      | -           | Sim        | Não  |
| idSeries    | identificador da serie     | INT(11)      | -           | Não        | Sim  |
| anoProducao | ano de produção            | INT(11)      | -           | Sim        | Sim  |
| Classificao | Classificacao da Temporada | VARCHAR(255) | -           | Sim        | Sim  |

#### RESTRIÇÕES DE INTEGRIDADE 

- **Chave Primária**: 

| Coluna(s)   |
| ----------- |
| idTemporada |

- **Unicidade** (valores únicos)*:

| Nome        | Coluna(s)   | Indexar |
| ----------- | ----------- | ------- |
| idSeries    | idSeries    | Sim     |
| idTemporada | idTemporada | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome     | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| -------- | --------- | ------------------- | ------------------------- | ------- |
| idSeries | idSeries  | Tabela Serie        | id                        | Sim     |

- **Atributos** (check)*:

| Nome          | Coluna(s)     |
| ------------- | ------------- |
| idTemporada   | idTemporada   |
| idSeries      | idSeries      |
| anoProducao   | anoProducao   |
| Classificacao | Classificacao |

### Tabela "episodios"

#### DESCRIÇÃO 

A tabela "episodios" é destinada a cada serie e na tabela temos "idEpisodio" "titulo" "duração" "idserie" nesta tabelas temos uma ligação entre o episodio e a serie em si desta forma para facilitar esta conexao temos em ambos os casos o seu id e assim conseguimos uma melhor organização, e também temos a duração de cada episódio.

#### COLUNAS 

| Nome       | Descrição                 | Domínio      | por Omissão | Automático | Nulo |
| :--------- | :------------------------ | :----------- | :---------- | :--------- | :--- |
| idEpisodio | identificador do Episodio | INT(11)      | -           | Sim        | Não  |
| Titulo     | Titulo do Episodio        | VARCHAR(255) | -           | Não        | Sim  |
| Duracao    | Duracao do Episodio       | TIME         | -           | Não        | Sim  |
| idSerie    | identificador da serie    | VARCHAR(255) | -           | Sim        | Sim  |


#### RESTRIÇÕES DE INTEGRIDADE 

- **Chave Primária**: 

| Coluna(s)  |
| ---------- |
| idEpisodio |

- **Unicidade** (valores únicos)*:

| Nome       | Coluna(s) | Indexar |
| ---------- | --------- | ------- |
| idEpisodio | idSerie   | Sim     |
| idSerie    | idSerie   | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome    | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ------- | --------- | ------------------- | ------------------------- | ------- |
| idSerie | idSerie   | Tabela Serie        | id                        | Sim     |

- **Atributos** (check)*:

| Nome       | Coluna(s)  |
| ---------- | ---------- |
| idEpisodio | idEpisodio |
| Titulo     | Titulo     |
| Duracao    | Duracao    |
| idSerie    | idSerie    |


### Tabela "atores_series"

#### DESCRIÇÃO 

Na tabela "atores_series", nós destacamos relativamente a cada serie para nao haver uma lista confusa e extensa de atores, na mesma existem atributos como "idSeries" e "idAtores" onde há uma ligação entre as series em que os mesmos participam e os nomes dos atores.

#### COLUNAS 

| Nome     | Descrição               | Domínio | por Omissão | Automático | Nulo |
| :------- | :---------------------- | :------ | :---------- | :--------- | :--- |
| idSerie  | identificador da série  | INT(11) | -           | Sim        | Sim  |
| idAtores | identificador de Atores | INT(11) | -           | Sim        | Sim  |


#### RESTRIÇÕES DE INTEGRIDADE 

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| idAtores  |

- **Unicidade** (valores únicos)*:

| Nome     | Coluna(s) | Indexar |
| -------- | --------- | ------- |
| idAtores | idAtores  | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome     | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| -------- | --------- | ------------------- | ------------------------- | ------- |
| idSerie  | idSerie   | Tabela Serie        | id                        | Sim     |
| idAtores | idAtores  | Tabela Atores       | id                        | Sim     |

- **Atributos** (check)*:

| Nome     | Coluna(s) |
| -------- | --------- |
| idSeries | idSeries  |
| idAtores | idAtores  |


### Tabela "Classificacao"

#### DESCRIÇÃO 

A tabela "classificação" é um pouco mais extensa e na mesma temos atributos como "idClassificação" "idConteudo" "Duração" "duração" "gosto" "dislike" com esta tabela o nosso objetico e ter uma melhor ajuda aos nossos utilizadores, onde os mesmos podem ver as classificações atribuidas aos filmes ou as series e d3ecidir se querem ou nao ver as mesmas, tambem temos a duração pois acreditamos que o tempo do filme muitas das vezes é algo determinante na escolha.

#### COLUNAS 

| Nome            | Descrição                      | Domínio  | por Omissão | Automático | Nulo |
| :-------------- | :----------------------------- | :------- | :---------- | :--------- | :--- |
| idClassificacao | identificador da Classificacao | INT(11)  | -           | Sim        | Não  |
| idConteudo      | identificador do Conteudo      | INT(11)  | -           | Sim        | Sim  |
| gosto           | Avaliação Positiva             | INT (11) | -           | Não        | Sim  |
| Dislike         | Avaliação Negativa             | INT (11) | -           | Não        | Sim  |


#### RESTRIÇÕES DE INTEGRIDADE 

- **Chave Primária**: 

| Coluna(s)       |
| --------------- |
| idClassificacao |

- **Unicidade** (valores únicos)*:

| Nome            | Coluna(s)       | Indexar |
| --------------- | --------------- | ------- |
| idClassificacao | idClassificacao | Sim     |
| idConteudo      | idConteudo      | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ---- | --------- | ------------------- | ------------------------- | ------- |
| -    | -         | -                   | -                         | -       |


- **Atributos** (check)*:

| Nome            | Coluna(s)       |
| --------------- | --------------- |
| idClassificacao | idClassificacao |
| idAtores        | idAtores        |
| gosto           | gosto           |
| Dislike         | Dislike         |

### Tabela "realizador"

#### DESCRIÇÃO 

A tabela "realizador" apenas temos "idRealizador" "nomeRealizador neste caso o que aconteçe é uma associação de um id a um Realizador.

#### COLUNAS 

| Nome           | Descrição                   | Domínio      | por Omissão | Automático | Nulo |
| :------------- | :-------------------------- | :----------- | :---------- | :--------- | :--- |
| idRealizador   | identificador da Realizador | INT(11)      | -           | Sim        | Não  |
| nomeRealizador | nome do Realizador          | VARCHAR(255) | -           | Sim        | Sim  |


#### RESTRIÇÕES DE INTEGRIDADE 

- **Chave Primária**: 

| Coluna(s)    |
| ------------ |
| idRealizador |

- **Unicidade** (valores únicos)*:

| Nome         | Coluna(s)    | Indexar |
| ------------ | ------------ | ------- |
| idRealizador | idRealizador | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ---- | --------- | ------------------- | ------------------------- | ------- |
| -    | -         | -                   | -                         | -       |


- **Atributos** (check)*:

| Nome           | Coluna(s)      |
| -------------- | -------------- |
| idRealizador   | idRealizador   |
| nomeRealizador | nomeRealizador |

### Tabela "utilizador"

#### DESCRIÇÃO 

A tabela "utilizador" está mais associada ao inicio onde a pessoa para assitir aos conteudos temos que criar um utilizador e nesta tabela estao associados "idUtilizador" "nomeUtilizador" "password" "email", tal como disse nesta tabela estão informações mais pessoais como o "email" "password" "nomeUtilizador" que têm de ser criados ao inicio e um id que é associado a cada um dos utilizadores.

#### COLUNAS 

| Nome           | Descrição                   | Domínio      | por Omissão | Automático | Nulo |
| :------------- | :-------------------------- | :----------- | :---------- | :--------- | :--- |
| idUtilizador   | identificador da utilizador | INT(11)      | -           | Sim        | Não  |
| nomeUtilizador | nome do utilizador          | VARCHAR(255) | -           | Sim        | Sim  |
| password       | password do utilizador      | VARCHAR(255) | -           | Não        | Sim  |
| email          | email do utilizador         | VARCHAR(255) | -           | Não        | Sim  |


#### RESTRIÇÕES DE INTEGRIDADE 

- **Chave Primária**: 

| Coluna(s)    |
| ------------ |
| idUtilizador |

- **Unicidade** (valores únicos)*:

| Nome         | Coluna(s)    | Indexar |
| ------------ | ------------ | ------- |
| idUtilizador | idUtilizador | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ---- | --------- | ------------------- | ------------------------- | ------- |
| -    | -         | -                   | -                         | -       |


- **Atributos** (check)*:

| Nome           | Coluna(s)      |
| -------------- | -------------- |
| idUtilizador   | idUtilizador   |
| nomeUtilizador | nomeUtilizador |
| password       | password       |
| email          | email          |


### Tabela "genero"

#### DESCRIÇÃO 

A tabela "Genero" apenas temos "idGenero" "nomeGenero" neste caso o que aconteçe é uma associação de um id a um tipo de genero.

#### COLUNAS 

| Nome       | Descrição               | Domínio      | por Omissão | Automático | Nulo |
| :--------- | :---------------------- | :----------- | :---------- | :--------- | :--- |
| idGenero   | identificador da genero | INT(11)      | -           | Sim        | Não  |
| nomeGenero | nome do Genero          | VARCHAR(255) | -           | Sim        | Sim  |



#### RESTRIÇÕES DE INTEGRIDADE 

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| idGenero  |

- **Unicidade** (valores únicos)*:

| Nome     | Coluna(s) | Indexar |
| -------- | --------- | ------- |
| idGenero | idGenero  | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ---- | --------- | ------------------- | ------------------------- | ------- |
| -    | -         | -                   | -                         | -       |


- **Atributos** (check)*:

| Nome       | Coluna(s)  |
| ---------- | ---------- |
| idGenero   | idGenero   |
| nomeGenero | nomeGenero |


---
| [< Previous](rebd03.md) | [^ Main](https://github.com/TCM22-SIBD-G02/TCM22-SIBD-G02/) | [Next >](rebd05.md) |
| :---------------------- | :---------------------------------------------------------: | ------------------: |