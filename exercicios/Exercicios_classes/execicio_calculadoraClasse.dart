// Calcular os valores informados conforme a operação escolhida.
import 'dart:io';

double num1 = 0;
double num2 = 0;
String operator = '';

// Instruções
// Escreva um algoritmo em Dart que tenha uma classe chamada Calculadora com os seguintes métodos (function):
// somar; subtrair; dividir ;multiplicar
class Calculadora {
  String? result;
  String soma(double num1, double num2) {
    return result = (num1 + num2).toString();
  }

  String sub(double num1, double num2) {
    return result = (num1 - num2).toString();
  }

  String mult(double num1, double num2) {
    return result = (num1 * num2).toString();
  }

  String div(double num1, double num2) {
    return result = (num1 / num2).toString();
  }
}

// No método main, receba 2 valores e a operação.
// Função de imput:
// A fazer... colocar imput junto com a Class calculadora e transforma as variáveis globais em atributos
void imput({double? imput1, double? imput2, String? sinal}) {
  double? imput1 = double.parse(stdin.readLineSync()!);
  double? imput2 = double.parse(stdin.readLineSync()!);
  String? sinal = stdin.readLineSync();
  num1 = imput1;
  num2 = imput2;
  operator = sinal!;
}

void main() {
  Calculadora calculadora = Calculadora();
  imput();
// Conforme a operação escolhida, utilize o método adequado da classe Calculadora para calcular os valores informados.
  switch (operator) {
    case '+':
      calculadora.result = calculadora.soma(num1, num2);
      break;
    case '-':
      calculadora.result = calculadora.sub(num1, num2);
      break;
    case '*':
      calculadora.result = calculadora.mult(num1, num2);
      break;
    case '/':
      calculadora.result = calculadora.div(num1, num2);
      break;
    default:
      calculadora.result = 'Operação inválida';
  }
  Tela result = Tela();
  result.imprimir(calculadora.result!);
}

// Crie uma classe chamada Tela, com um método para mostrar o resultado na tela.
class Tela {
  void imprimir(String result) {
    if (result == 'Operação inválida') {
      print(result);
    } else {
      print('Resultado de $num1 $operator $num2: $result');
    }
  }
}
