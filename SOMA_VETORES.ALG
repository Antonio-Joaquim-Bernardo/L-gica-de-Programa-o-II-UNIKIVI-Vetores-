Algoritmo "SomaVetores"
// Disciplina   : Lógica de Programação II
// Docente      : Moyo Kanivengidio
// Curso: Engenharia Informática 1º Ano
// Descrição    : 3. Desenvolva um algoritmo que leia dois vetores de 10 números cada e crie um terceiro vetor com a soma dos elementos correspondentes.
// Programador  : ANTÓNIO JOAQUIM BERNARDO
// Data atual  : 15/04/2026

procedimento menu()
// Procedimento dedicado á exibição de um pequeno menu para estilização
inicio
   limpatela
   escreval(" _______________________________________________________________________________________________________________________________________________")
   escreval("|                                                                  VETORES-AjB                                                                  |")
   escreval("|     3. Desenvolva um algoritmo que leia dois vetores de 10 números cada e crie um terceiro vetor com a soma dos elementos correspondentes.    |")
   escreval("|_______________________________________________________________________________________________________________________________________________|")
fimprocedimento

Var
   // Seção de Declarações das variáveis
   v1:vetor[1..10] de inteiro
   v2: vetor[1..10] de inteiro
   soma: vetor[1..10] de inteiro
   i: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   // Inserção dos 10 números no primeiro vetor

   para i de 1 ate 10 faca
      menu()
      escreval("|                    == Valores do primiero Vetor ==               ")
      escreval("| Digite o ", i, "º número")
      escreva("|R: ")
      leia(v1[i])
   fimpara


   // Inserção dos 10 números no segundo vetor
   para i de 1 ate 10 faca
      menu()
      escreval("|                       == Valores do segundo Vetor ==               ")
      escreval("| Digite o ", i, "º número")
      escreva("|R: ")
      leia(v2[i])
   fimpara


   // Soma dos Vetores
   para i de 1 ate 10 faca
      soma[i]<-(v1[i]+v2[i])
   fimpara

   // Apresentação do Resultado
   menu()
   para i de 1 ate 10 faca
      escreva("| ", v1[i]:10)
   fimpara
   escreva(" |--> Primeiro Vector   |")

   escreval("")
   para i de 1 ate 10 faca
      escreva("| ", v2[i]:10)
   fimpara
   escreva(" |--> Segundo Vector    |")

   escreval("")
   para i de 1 ate 10 faca
      escreva("| " ,soma[i]:10)
   fimpara
   escreva(" |--> Soma dos Vectores |")
   escreval("")
   escreval("|_______________________________________________________________________________________________________________________________________________|")

Fimalgoritmo