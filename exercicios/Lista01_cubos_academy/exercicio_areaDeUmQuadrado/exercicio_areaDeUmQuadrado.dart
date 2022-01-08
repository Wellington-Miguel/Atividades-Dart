import 'dart:io';

// Instruções
void main() {
// Escreva um algoritmo em Dart que calcule a área de um quadrado.
  int? lado = int.parse(stdin.readLineSync()!);
  int area = lado * lado;
// Exibir o resultado na tela.
  print(area);
}
