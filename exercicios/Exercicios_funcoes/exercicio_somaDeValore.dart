// Objetivo
// Somar os valores informados.

// Instruções
import 'dart:io';

double valor1 = 0;
double valor2 = 0;
void main() {
  imput();
  soma();
}

// Escreva um algoritmo em Dart que receba 2 valores decimais.
void imput({double? imput1, double? imput2}) {
  double? imput1 = double.parse(stdin.readLineSync()!);
  double? imput2 = double.parse(stdin.readLineSync()!);
  valor1 = imput1;
  valor2 = imput2;
}

// Crie uma function sem parâmetros e sem retorno para calcular a soma dos valores informados.
void soma() {
  print(valor1 + valor2);
}

// Mostre o resultado na tela.
  

