// Instruções
import 'dart:io';

void main() {
// Escreva um algoritmo em Dart que receba 2 valores inteiros.
  int? a = int.parse(stdin.readLineSync()!);
  int? b = int.parse(stdin.readLineSync()!);
// Inverta os valores informados.
  print('Valores originais:');
  print(' - Valor A: $a');
  print(' - Valor B: $b');
  int help;
  help = a;
  a = b;
  b = help;
// Mostre na tela de valores invertidos.
  print('Valores invertidos:');
  print(' - Valor A: $a');
  print(' - Valor B: $b');
// Ex: valorA passa a ter o conteúdo de valorB e valorB passa a ter o conteúdo de valorA.
}
