Algoritmo "OrdenarVertorSemAlgoritmoOrdenacao"
// Disciplina   : Lógica de Programação II
// Docente      : Moyo Kanivengidio
// Curso: Engenharia Informática 1º Ano
// Descrição    : 5. Crie um algoritmo que leia um vetor de 15 números e exiba-o em ordem crescente (sem usar algoritmos de ordenação ainda).
// Programador  : ANTÓNIO JOAQUIM BERNARDO
// Data atual  : 15/04/2026

procedimento menu()
// Procedimento dedicado á exibição de um pequeno menu para estilização
inicio
limpatela
escreval(" _______________________________________________________________________________________________________________________________________________")
escreval("|                                                                  VETORES-AjB                                                                  |")
escreval("|         5. Crie um algoritmo que leia um vetor de 15 números e exiba-o em ordem crescente (sem usar algoritmos de ordenação ainda).           |")
escreval("|_______________________________________________________________________________________________________________________________________________|")
fimprocedimento

Var
// Seção de Declarações das variáveis
   v: vetor[1..15] de inteiro
   v_ordem: vetor[1..15] de inteiro
   utilizado: vetor[1..15] de logico // Este vetor guarda se a posição já foi usada (verdadeiro/falso)
   i, j, menor, pos_menor: inteiro
   primeiro_encontrado: logico

Inicio

// Seção de Comandos, procedimento, funções, operadores, etc...

   // Inserção dos 15 números e inicialização do vetor lógico
   para i de 1 ate 15 faca
   menu()
      escreva("| Digite o ", i, "º número: ")
      leia(v[i])
      utilizado[i] <- falso
   fimpara

   // Ordenação por Seleção (com marcação lógica)
   para i de 1 ate 15 faca
      primeiro_encontrado <- falso

      para j de 1 ate 15 faca
         // Só verifica os números que ainda não foram marcados como 'utilizados'
         se nao utilizado[j] entao
            // Se for o primeiro número disponível que encontramos
            se (nao primeiro_encontrado) entao
               menor <- v[j]
               pos_menor <- j
               primeiro_encontrado <- verdadeiro
            senao
               // Se já temos um número como candidato a menor vamos comparamos
               se (v[j] < menor) entao
                  menor <- v[j]
                  pos_menor <- j
               fimse
            fimse
         fimse
      fimpara

      v_ordem[i] <- menor // Armazenamos o menor no novo vetor
      utilizado[pos_menor] <- verdadeiro // Marcamos esta POSIÇÃO como usada
   fimpara
   
// Apresentação do Resultado
menu()
para i de 1 ate 15 faca
escreva("| ", v[i]:6)
fimpara
escreva(" |--> Teu Vector        |")

escreval("")
para i de 1 ate 15 faca
escreva("| " ,v_ordem[i]:6)
fimpara
escreva(" |--> Vetor ordenado    |")
escreval("")
escreval("|_______________________________________________________________________________________________________________________________________________|")

Fimalgoritmo