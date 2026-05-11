Algoritmo "ExibirSegundoMaiorNumero"
// Disciplina   : Lógica de Programação II
// Docente      : Moyo Kanivengidio
// Curso: Engenharia Informática 1º Ano
// Descrição    : 2. Crie um algoritmo que leia 10 números e exiba o segundo maior valor.
// Programador  : ANTÓNIO JOAQUIM BERNARDO
// Data atual  : 15/04/2026

procedimento menu()
// Procedimento dedicado á exibição de um pequeno menu para estilização
inicio
   limpatela
   escreval(" ___________________________________________________________________________")
   escreval("|                                VETORES-AjB                                |")
   escreval("|  2. Crie um algoritmo que leia 10 números e exiba o segundo maior valor.  |")
   escreval("|___________________________________________________________________________|")
fimprocedimento

Var
   numeros: vetor[1..10] de inteiro
   i, maior, segundo: inteiro

Inicio
   // Ler os 10 números
   para i de 1 ate 10 faca
      menu()
      escreval("| Digite o ", i, "º número")
      escreva("|R: ")
      leia(numeros[i])
   fimpara

   // Considerando o primeiro valor como maior e segundo maior
   maior <- numeros[1]
   segundo <- numeros[1]

   // Encontrar o maior e o segundo maior
   para i de 2 ate 10 faca
      se numeros[i] > maior entao
         segundo <- maior
         maior <- numeros[i]
      senao
         se (numeros[i] > segundo) e (numeros[i] <> maior) entao
            segundo <- numeros[i]
         fimse
      fimse
   fimpara

   // Resultado
   menu()
   escreval("| O segundo maior é: ", segundo)

Fimalgoritmo