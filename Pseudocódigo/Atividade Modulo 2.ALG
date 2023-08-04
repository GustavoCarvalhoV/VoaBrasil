Algoritmo "Atividade prática módulo 2"
//Aluno: Gustavo de Carvalho Venceslau
//Programa para cadastros e consultas de uma agência de viagens.

Var

   menu : caractere
   clientes : vetor [0..9] de caractere
   idades: vetor[0..9] de inteiro
   destinos : vetor [0..9] de caractere


procedimento mostrarMenu()
inicio
      escreval(" ")
      escreval("Digite 1 para cadastrar um cliente!")
      escreval
      escreval("Digite 2 para cadastrar um destino!")
      escreval
      escreval("Digite 3 para consultar um cliente!")
      escreval
      escreval("Digite 4 para consultar um destino!")
      escreval
      escreval("Digite 5 para sair!")
      escreval(" ")
      escreval(" ")
      leia(menu)
fimprocedimento


procedimento cadastrarCliente()
var
   i : inteiro
inicio

   escreval
   para i de 0 ate 9 faca
        se clientes[i] = "" entao
           escreva("Nome: ")
           leia(clientes[i])
           escreva("Idade: ")
           leia(idades[i])
           escreval(" ")
           escreval(" ")
           interrompa
        fimse
   fimpara
fimprocedimento


procedimento cadastrarDestino()
var
   i : inteiro
inicio

   escreval
   para i de 0 ate 9 faca
        se destinos[i] = "" entao
           escreva("Nome do destino: ")
           leia(destinos[i])
           escreval(" ")
           escreval(" ")
           interrompa
        fimse
   fimpara
fimprocedimento


procedimento consultarCliente()
var
   i : inteiro
   consultarCliente : caractere
   indice : inteiro
inicio

   escreval
   escreval("Digite o nome do cliente que deseja consultar:")
   leia(consultarCliente)

   para i de 0 ate 9 faca
        se clientes[i] = consultarCliente entao
           indice <- i
           interrompa
        fimse
   fimpara
   se indice = -1 entao
      escreval("Cliente não cadastrado!")
   senao
      escreval("Cliente esta cadastrado na posição: ", indice)
      escreval("Nome do cliente: ", clientes[indice])
      escreval("Idade: ", idades[indice])
      escreval(" ")
      escreval(" ")
   fimse
fimprocedimento


procedimento consultarDestino()
var
   i : inteiro
   consultarDestino : caractere
   indice : inteiro
inicio

   escreval
   escreval("Digite o nome do destino que deseja consultar:")
   leia(consultarDestino)

   escreval
   para i de 0 ate 9 faca
        se destinos[i] = consultarDestino entao
           indice <- i
           interrompa
        fimse
   fimpara
   se indice = -1 entao
      escreval("Destino não cadastrado!")
   senao
      escreval("Este destino esta cadastrado na posição: ", indice)
      escreval("Nome do Destino: ", destinos[indice])
      escreval(" ")
      escreval(" ")
   fimse
fimprocedimento


Inicio

escreval("------ Seja bem vindo a nossa agência de viagens ------")
repita
      mostrarMenu()
      escolha menu
          caso "1"
               cadastrarCliente()
          caso "2"
               cadastrarDestino()
          caso "3"
               consultarCliente()
          caso "4"
               consultarDestino()
          outrocaso
             escreval("Programa encerrado.")
     fimescolha
    ate menu = "5"

Fimalgoritmo