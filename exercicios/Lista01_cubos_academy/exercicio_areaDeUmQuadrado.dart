//Objetivo
// Calcular a área de um quadrado a partir do valor dos lados.
// Lembrando que a premissa (o que se espera) de uma figura ser considerada um quadrado é ter os lados iguais.
import 'dart:io';

// Instruções
void main() {
// Escreva um algoritmo em Dart que calcule a área de um quadrado.
  int? lado = int.parse(stdin.readLineSync()!);
  int area = lado * lado;
// Exibir o resultado na tela.
  print(area);
}