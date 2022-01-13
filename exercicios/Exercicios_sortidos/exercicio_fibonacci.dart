// Objetivo
// Criar uma function recursiva para demonstrar a Sequência de Fibonacci.
import 'dart:io';

int valor = imput();
String sequencia = '1';
var result = 0;
int cont1 = 0;
int cont2 = 1;
// Instruções
// Escreva um algoritmo em Dart que receba um número
int imput({int? iimput1}) {
  int? imput1 = int.parse(stdin.readLineSync()!);
  return imput1;
}

// Crie uma function recursiva para calcular e validar os números da Sequência de Fibonacci até o valor informado.

void fibonacci() {
  if ((result + cont1) >= valor) {
    return;
  }
  result = cont1 + cont2;
  sequencia += ' ${result.toString()}';
  cont1 = cont2;
  cont2 = result;
  fibonacci();
}

// Mostre o resultado na tela.
void main() {
  fibonacci();
  print(sequencia);
}
