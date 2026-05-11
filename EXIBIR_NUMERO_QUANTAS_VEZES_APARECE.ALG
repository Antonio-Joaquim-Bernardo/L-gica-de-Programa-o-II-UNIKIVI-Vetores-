Algoritmo "ExibirNumeroQuantasVezesAparece"
// Disciplina   : Lógica de Programação II
// Docente      : Moyo Kanivengidio
// Curso: Engenharia Informática 1º Ano
// Descrição    : 1. Leia 20 números e armazene em um vetor. Em seguida, leia um número e verifique se ele existe no vetor. Exiba quantas vezes ele aparece.
// Programador  : ANTÓNIO JOAQUIM BERNARDO
// Data atual  : 15/04/2026

procedimento menu()
// Procedimento dedicado á exibição de um pequeno menu para estilização
inicio
   limpatela
   escreval(" ___________________________________________________________________________")
   escreval("|                                VETORES-AjB                                |")
   escreval("| 1. Leia 20 números e armazene em um vetor. Em seguida, leia um número e   |")
   escreval("|     verifique se ele existe no vetor. Exiba quantas vezes ele aparece.    |")
   escreval("|___________________________________________________________________________|")
fimprocedimento

Var
   // Seção de Declarações das variáveis
   numeros:vetor[1..20] de inteiro
   numero, i, qtd: inteiro
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   qtd<-0

   // Inserção dos 20 números
   para i de 1 ate 20 faca
      menu()
      escreval("| Digite o ", i, "º número")
      escreva("|R: ")
      leia(numeros[i])
   fimpara

   // Pesquisar um número no Vector
   menu()
   escreval("| Digite um número para ser procurado")
   escreva("| Pesquisar: ")
   leia(numero)
   para i de 1 ate 20 faca
      se (numeros[i]= numero) entao
         qtd<-qtd+1
      fimse
   fimpara

   // Resultado da pesquisa
   se (qtd>0) entao
      menu()
      escreval("| O número ",numero," aparece ",qtd," vezes no vector")
   senao
      menu()
      escreval("| O número ",numero," não se encontra no vector")
   fimse
   
Fimalgoritmo