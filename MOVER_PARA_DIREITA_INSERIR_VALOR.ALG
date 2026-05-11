Algoritmo "MoverParaDireitaInserirValor"
// Disciplina   : Lógica de Programação II
// Docente      : Moyo Kanivengidio
// Curso: Engenharia Informática 1º Ano
// Descrição    : 4. Faça um algoritmo que leia um vetor de 10 números e um valor X. Desloque todos os elementos uma posição para a direita e insira X na primeira posição.
// Programador  : ANTÓNIO JOAQUIM BERNARDO
// Data atual  : 15/04/2026

procedimento menu()
// Procedimento dedicado á exibição de um pequeno menu para estilização
inicio
   limpatela
   escreval(" _________________________________________________________________________________________________________________________________________________")
   escreval("|                                                                   VETORES-AjB                                                                   |")
   escreval("|                     4. Faça um algoritmo que leia um vetor de 10 números e um valor X. Desloque todos os elementos                              |")
   escreval("|                                         uma posição para a direita e insira X na primeira posição.                                              |")
   escreval("|_________________________________________________________________________________________________________________________________________________|")
fimprocedimento

Var
   // Seção de Declarações das variáveis
   v:vetor[1..10] de inteiro
   v_novo:vetor[1..11] de inteiro
   x, i: inteiro
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   // Inserção dos 10 números
   para i de 1 ate 10 faca
      menu()
      escreval("| Digite o ", i, "º número")
      escreva("|R: ")
      leia(v[i])
   fimpara

   // Inserção do valor de X
   escreval("| Digite o valor de X que será inserido na 1ª posição")
   escreva("|R: ")
   leia(x)

   // Acrescentar e Mover os elementos
   v_novo[1]<-x
   para i de 1 ate 10 faca
      menu()
      v_novo[i+1]<-v[i]
   fimpara

   // Apresentação dos resultados
   para i de 1 ate 10 faca
      escreva("| " ,v[i]:8)
   fimpara
   escreva("|          |--> Antes de Mover para a direita |")
   escreval("")

   para i de 1 ate 11 faca
      escreva("| " ,v_novo[i]:8)
   fimpara
   escreva(" |--> Depois de Mover e inserir o X |")
   escreval("")
   escreval("|_________________________________________________________________________________________________________________________________________________|")

Fimalgoritmo