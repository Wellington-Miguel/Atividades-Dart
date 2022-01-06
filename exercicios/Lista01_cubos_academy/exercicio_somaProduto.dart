/*Objetivo
Calcular o produto de 4 valores informados.*/
import 'dart:io';

// Instruções
void main() {
//Escreva um algoritmo em Dart que receba 4 valores.
  int? v1 = int.parse(stdin.readLineSync()!);
  int? v2 = int.parse(stdin.readLineSync()!);
  int? v3 = int.parse(stdin.readLineSync()!);
  int? v4 = int.parse(stdin.readLineSync()!);
//Calcule o produto dos dois primeiros e somar com o produto dos dois últimos.
  int prod1 = v1 * v2;
  int prod2 = v3 * v4;
//Exibir o resultado na tela.
  print(prod1 + prod2);
}
