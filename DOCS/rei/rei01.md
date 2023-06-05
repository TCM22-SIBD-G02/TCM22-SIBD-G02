# C1 : Introdução


## Descrição do trabalho

O nosso trabalho consiste na criação de um sistema de informação para uma plataforma de streaming que mais tarde pretende a criação de uma base de dados.
Para assistiram a qualquer conteúdo na plataforma não é necessário qualquer tipo de pagamento, o utilizador apenas tem de iniciar sessão ou criar uma conta. Para a sua criação é preciso escolher um nome de utilizador, uma password e associar um email. 
Ao criar uma conta além de poder usufruir de todo o conteúdo da plataforma também consegue dar a sua avaliação (like ou dislike) relativamnente ao conteúdo visualizado.
A nossa plataforma esta dividida em series e filmes.  Dentro das series encontramos o seu id, realizador, sinopse, género, público alvo, título, classificação e o ano da sua produção, para além disto as series também contam com as informações relativas as temporadas como os atores de cada episódio, título, duração, id do episódio. Relativamente aos filmes encontramos o seu id, título, duração, ano, género, atores, realizador, público alvo, sinopse, realizador e classificação.



## Os conteúdos presentes no site estão divididos em dois tipos: 
* Filme 
* Séries


## Até à data, apenas contamos com 10 utilizadores:
1.	Ana Maria, o seu nome de utilizador é AnaM, o seu ID é 436759, a sua password é P@ssw0rd! e este é o seu e-mail anamaria@hotmail.com  
2.	Luís Fernando, o seu nome de utilizador é LuisFer, o seu ID é 185672, a sua password é 123qweASD e este é o seu e-mail luisfer1999@gmail.com
3.	Camila Silva, o seu nome de utilizador é CamilS, o seu ID é 264903, a sua password é Myp@55w0rd 123qweASD e este é o seu e-mail camila200silva@gmail.com
4.	Pedro Henrique, o seu nome de utilizador é PSilva, o seu ID é 785009, a sua password é s3cr3tC0d3 e este é o seu e-mail psilva@yahoo.com
5.	Paula Cristina, o seu nome de utilizador é PaulaCris, o seu ID é 330584, a sua password é @ccessGr@nted e este é o seu e-mail paulacris@outlook.com
6.	Bruno Oliveira, o seu nome de utilizador é BrunoOliv, o seu ID é 905811, a sua password é Pa$$w0rd$ecure e este é o seu e-mail bruninho2@gmail.com
7.	Juliana Santos, o seu nome de utilizador é JulSantos, o seu ID é 113801, a sua password é 1L0v3M@th, este é o seu e-mail julia2123@outlook.com
8.	Rafaela Alves, o seu nome de utilizador é RafAlves, o seu ID é 905820, a sua password é G00dLucK123 e este é o seu e-mail rafs4lves23@hotmail.com
9.	Vinicius Silva, o seu nome de utilizador é ViniSilva, o seu ID é 336908, a sua password é P0tat0c0uch, e este é o seu e-mail vinisilva123@yahoo.com
10.	Flávia Pereira, o seu nome de utilizador é FláviaP, o seu ID é 401853, a sua password é R@bbitF00t123, e este é o seu e-mail fláviapereira349@gmail.com


## Entidade Filme:
1.	ID (identificador único);
2.	Título;
3.	Ano;
4.	Género;
5.	Sinopse;
6.	Duração;
7.	Classificação;
8.	Publico. Alvo;
9.	Realizador;
10.	Atores.

## Entidade Série:

1.	ID (identificador único);
2.	Título;
3.	Género;
4.	Sinopse;
5.	Episódios;
6.	Classificação;
7.	Público-Alvo;
8.	Realizador;
9.	Ano.

## Entidade Temporadas

1. Episódios;
2. Atores;
3. Id_Episódio;
4. Título;
5. Duração.
   
## Entidade Utilizador

1. ID (identificador único);
2. Email;
3. Password;
4. Login_nome.

## Entidade Funções

 1. ID (identificador único);
 2. Nome da função.
   


## Modelação do problema

1. Problema com Pesquisa: Ao termos diversas maneiras de procurar um filme ou uma série, a pesquisa poderá vir a ser pouco rigorosa ou até mesmo inconclusiva. Isto é, caso um utilizador pesquise pelo seu ator favorito e queira apenas os filmes em que o ator é a personagem principal, não vai ter uma pesquisa conclusiva. 

---
[< Previous](rei00.md) | [^ Main](https://github.com/TCM22-SIBD-G03/TCM22-SIBD-G03) | [Next >](rei02.md)
:--- | :---: | ---: 
