## DML
```sql
USE `test`;

DROP TABLE IF EXISTS `Utilizador`;

DROP TABLE IF EXISTS `Filme`;

DROP TABLE IF EXISTS `Realizador`;

DROP TABLE IF EXISTS `Genero`;

DROP TABLE IF EXISTS `Series`;

DROP TABLE IF EXISTS `Atores_Series`;

DROP TABLE IF EXISTS `Episodios`;

DROP TABLE IF EXISTS `Classificação `;

DROP TABLE IF EXISTS `Atores `;

DROP TABLE IF EXISTS `Temporadas`;

CREATE TABLE IF NOT EXISTS `Utilizador` (

`idUtilizador` int(6) unsigned NOT NULL,

`nomeUtilizador` varchar(9) unsigned NOT NULL,

`Password` varchar(20) unsigned NOT NULL,

`email` varchar(100) unsigned NOT NULL,

PRIMARY KEY (`idUtilizador`)

);

CREATE TABLE IF NOT EXISTS `Filme` (

`idFilme` int(6) unsigned NOT NULL,

`titulo` varchar(100) unsigned NOT NULL,

`duração` int(3) unsigned NOT NULL,

`ano` int(4) unsigned NOT NULL,

`publicoAlvo` varchar(5) unsigned NOT NULL,

`sinopse` mediumtext(20000) unsigned NOT NULL,

FOREIGN KEY (idRealizador) REFERENCES Realizador (idRealizador),

FOREIGN KEY (idGenero) REFERENCES Genero (idGenero),

PRIMARY KEY (`idUtilizador`)

);

CREATE TABLE IF NOT EXISTS `Realizador` (

`idRealizador` int(6) unsigned NOT NULL,

`nomeRealizador` varchar(35) unsigned NOT NULL,

PRIMARY KEY (`idRealizador`)

);

CREATE TABLE IF NOT EXISTS `Genero` (

`idGenero` int(6) unsigned NOT NULL,

`nomeGenero` varchar(10) unsigned NOT NULL,

PRIMARY KEY (`idGenero`)

);

CREATE TABLE IF NOT EXISTS `Series` (

`idSerie` int(6) unsigned NOT NULL,

`Temporada` int (2) unsigned NOT NULL,

FOREIGN KEY (idConteudo) REFERENCES Classificacao (idConteudo),

PRIMARY KEY (`idSerie`)

);

CREATE TABLE IF NOT EXISTS `Atores_Series ` (

`idSerie` int(6) unsigned NOT NULL,

FOREIGN KEY (idAtor) REFERENCES Atores (idAtor),

PRIMARY KEY (`idSerie`)

);

CREATE TABLE IF NOT EXISTS `Episodios` (

`idEpisodio` int(7) unsigned NOT NULL,

`Titulo` varchar(100) unsigned NOT NULL,

`Duracao` int(3) unsigned NOT NULL,

FOREIGN KEY (idSerie) REFERENCES Series (idSerie),

PRIMARY KEY (`idEpisodios`),

);

CREATE TABLE IF NOT EXISTS `Classificacao` (

`idClassificacao` int(6) unsigned NOT NULL,

`idConteudo` int(5) unsigned NOT NULL,

`Duracao` int(3) unsigned NOT NULL,

`Like` char(4) unsigned NOT NULL,

`Dislike` char(7) unsigned NOT NULL,

PRIMARY KEY (`idClassificacao`),

);

CREATE TABLE IF NOT EXISTS `Atores` (

`idAtores` int(7) unsigned NOT NULL,

`nomeAtor` varchar(100) unsigned NOT NULL,

PRIMARY KEY (`idAtores`),

);

CREATE TABLE IF NOT EXISTS `Temporadas` (

`idTemporada` int(7) unsigned NOT NULL,

`idSerie` int(6) unsigned NOT NULL,

`anoProducao` int(4) unsigned NOT NULL,

`Classificacao` int(3) unsigned NOT NULL,

PRIMARY KEY (`idTemporada`),

);
```
**DML**

1. Indica-me os títulos de todos os filmes feitos a partir do ano 2000.

```sql
SELECT titulo

FROM Filmes

WHERE ano=\>2000;
```

2. Indica-me todos os filmes com uma duração inferior a uma hora e meia.

```sql
SELECT titulo

FROM Filmes

WHERE duração\<90;
```

3. Indica-me todos os filmes do Realizador "x"

```sql
SELECT titulo

FROM Filmes, Realizador

WHERE nomeRealizador='x';
```

4. Indica-me todos os nomes dos utilizadores

```sql
SELECT nomeUtilizador

FROM Utilizador;
```
