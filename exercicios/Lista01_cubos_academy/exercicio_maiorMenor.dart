/*Objetivo
Verificar qual dos números informados é maior, qual menor ou se são iguais.*/
import 'dart:io';

// Instruções
void main() {
// Escreva um algoritmo em Dart que receba 2 valores.
  int? valor1 = int.parse(stdin.readLineSync()!);
  int? valor2 = int.parse(stdin.readLineSync()!);
// Verificação qual o maior valor, qual o menor valor, ou se são iguais.
// Mostre o resultado na tela.
  if (valor1 > valor2) {
    print('Maior valor: $valor1');
    print('Menor valor: $valor2');
  } else if (valor2 > valor1) {
    print('Maior valor: $valor2');
    print('Menor valor: $valor1');
  } else {
    print("Valores iguais");
  }
}
