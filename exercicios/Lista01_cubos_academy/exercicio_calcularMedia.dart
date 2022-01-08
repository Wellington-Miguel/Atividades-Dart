/*Objetivo
Calcular a média das notas de um estudante.*/
import 'dart:io';

// Instruções
void main() {
// Escreva um algoritmo em Dart que receba 3 notas de um estudante.
  print('Primeira nota');
  double? nota1 = double.parse(stdin.readLineSync()!);
  print('Segunda nota');
  double? nota2 = double.parse(stdin.readLineSync()!);
  print('Terceira nota');
  double? nota3 = double.parse(stdin.readLineSync()!);
// Calcule a média das notas.
  double media = (nota1 + nota2 + nota3) / 3;
// Mostre na tela.
  print('Média: $media');
}
