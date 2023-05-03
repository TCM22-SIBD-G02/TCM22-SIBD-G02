# C3 : Esquema conceptual

## Modelo E/A

## Entidades

* Filme - A cada filme será atribuído um id para identificar na nossa base de dados, além disso terá também o seu título original, duração em minutos, género ao qual o filme se enquadra, uma breve sinopse, uma classificação de 0 a 10, o ano em que foi lançado, o publico alvo, realizador, atores e alguns comentários.

* Série - A cada serie será atribuído um id para identificar na nossa base de dados, além disso terá também o seu título original, número de temporadas e episódios, género ao qual a serie se enquadra, uma breve sinopse, uma classificação de 0 a 10, o ano em que foi lançada, o publico alvo, realizador, atores e alguns comentários.

* Documentário/Entrevista - A cada Comentário/Entrevista será atribuído(a) um id para identificar na nossa base de dados, além disso terá também o seu título original, duração em minutos, género ao qual o Comentário/Entrevista se enquadra, uma breve sinopse, uma classificação de 0 a 10, o ano em que foi lançado(a), o publico alvo, realizador, participantes e alguns comentários.

* Utilizador - Serão todos as pessoas que se registarem no nosso site e que assistam aos nossos conteúdo. Logo após o registo, será atribuido um ID para cada utilizador, assim o identificado. 

* Informações - Todos os utilizadores terão de preencher um formulário com as seguintes informações, um username, uma password e um email. Além disso cada utilizador terá um id para identificar na base de dados.

* Funções - Cada utilizador terá uma função no website, esta poderá ser um mero espetador ou um administrador.

## Associações

* Avalia - Um utilizador poderá avaliar mais do que um filme/serie/documentário/entrevista

* Tem - Todos os utilizadores terão informações e funções

## Diagrama EA  

![Modelo EA](images/image1.png)

## Regras de negócio adicionais (Restrições)

* Não há possibilidade de fazer downloads

* Impossibilidade de acessar a platoforma sem internet

* Obrigatoriedade de registo

* Obrigatoriedade de disponibilizar idade

* Os comentários e avaliações não podem ser de carácter anónimo

 ---
[< Previous](rei02.md) | [^ Main](https://github.com/TCM22-SIBD-G03/TCM22-SIBD-G03) | [Next >](rei03.md)
:--- | :---: | ---: 



