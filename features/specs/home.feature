#language: pt

#Plano de teste 
Funcionalidade:  Home Page

Cenario: Acessar Home Page

Dado que eu acesse a home page do projeto Qa.Coders
Então devo visualizar  a informação "Aprenda na prática."

@testsobrenos
Cenario: Validar o  Sobre nós Home Page
Dado que eu acesse a home page do projeto Qa.Coders
Quando  clico no menu "Sobre nós" 
Então devo visualizar a informação "Sobre nós"

@testedepoimentos
 Cenario: Validar o menu Depoimentos Home Page
 Dado que eu acesse a home page do projeto Qa.Coders
 Quando clico no menu "Depoimentos"
 Então devo visualizar a informação "Depoimentos"

 @testeparceiros   
Cenario: Validar menu Parceiros 
Dado que eu acesse a home page do projeto Qa.Coders
Quando clico no menu "Parceiros"
Então devo visualizar a informação "Parceiros"