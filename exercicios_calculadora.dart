//Você deverá construir uma calculadora simples, que ao receber dois números e um operador, exibe o resultado da operação.
//Dica: para converter uma String para double, utilize double.parse()

import 'dart:io';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  // Variaveis iniciais
  final number1 = double.parse(inputs[0]);
  final operator = inputs[1];
  final number2 = double.parse(inputs[2]);

  // Escreva seu programa a partir daqui
  double result;
  switch (operator) {
    case "-":
      result = number1 - number2;
      break;
    case "/":
      result = number1 / number2;
      break;
    case "*":
      result = number1 * number2;
      break;
    default:
      result = number1 + number2;
      break;
  }
  final resultstring = result.toStringAsFixed(5);
  final inteiro = result ~/ 1;
  print(inteiro);
  final resto = result % 1;
  print(resto);
  if (resto == 0) {
    print(resultstring);
  } else {
    print(double.parse(resultstring));
  }
}
