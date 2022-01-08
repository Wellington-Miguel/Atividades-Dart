/*Objetivo
Calcular a média das notas de um estudante e verificar se está aprovado ou reprovado, 
usando como base, a média 6.*/
import 'dart:io';

// Instruções
void main() {
// Escreva um algoritmo em Dart que receba 4 notas de um estudante.
  print('Primeira nota');
  double? nota1 = double.parse(stdin.readLineSync()!);
  print('Segunda nota');
  double? nota2 = double.parse(stdin.readLineSync()!);
  print('Terceira nota');
  double? nota3 = double.parse(stdin.readLineSync()!);
  print('Quarta nota');
  double? nota4 = double.parse(stdin.readLineSync()!);
// Calcule a média das notas.
  double media = (nota1 + nota2 + nota3 + nota4) / 4;
// Verificar o valor da média das notas
// Se a média for maior ou igual a 6, escreva "Aprovado", senão escreva "Reprovado".
// Mostre na tela, a média e se está aprovado.
  if (media >= 6) {
    print('Média: $media');
    print('Aprovado');
  } else {
    print('Média: $media');
    print('Reprovado');
  }
}
