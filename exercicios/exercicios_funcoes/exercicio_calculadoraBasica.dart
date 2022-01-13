// Objetivo
// Calcular os valores informados conforme a operação escolhida.
import 'dart:io';

// Instruções
double valor1 = 0;
double valor2 = 0;
String operacao = '';
void main() {
  imput();
  result();
}

// Escreva um algoritmo em Dart que receba 2 valores.
void imput({double? imput1, double? imput2, String? sinal}) {
  double? imput1 = double.parse(stdin.readLineSync()!);
  double? imput2 = double.parse(stdin.readLineSync()!);
  String? sinal = stdin.readLineSync();
  valor1 = imput1;
  valor2 = imput2;
  operacao = sinal!.toUpperCase();
}

// Crie 4 functions para calcular os valores informados conforme a operação escolhida (adição, subtração, divisão, multiplicação).
void soma() {
  print('Resultado de $valor1 + $valor2: ${valor1 + valor2}');
}

void subtracao() {
  print('Resultado de $valor1 - $valor2: ${valor1 - valor2}');
}

void divisao() {
  print('Resultado de $valor1 / $valor2: ${valor1 / valor2}');
}

void multiplicacao() {
  print('Resultado de $valor1 * $valor2: ${valor1 * valor2}');
}
// Crie uma function para mostrar o resultado na tela.

void result() {
  switch (operacao) {
    case 'ADIÇAO':
      soma();
      break;
    case 'SUBTRAÇAO':
      subtracao();
      break;
    case 'DIVISAO':
      divisao();
      break;
    case 'MULTIPLICAÇAO':
      multiplicacao();
      break;
    default:
      print('Operação inválida');
  }
}
