// Objetivo
// Criar uma function recursiva para somar os números até o valor informado.
import 'dart:io';

// Instruções
int valor = imput();
int soma = 0;

// Escreva um algoritmo em Dart que receba um número inteiro.
int imput({int? imput1}) {
  print('Digite um valor:');
  int? imput1 = int.parse(stdin.readLineSync()!);
  return imput1;
}

// Crie uma function recursiva para calcular a soma de todos os números até o valor informado.
void calculoRecursivo() {
  soma += valor;
  valor--;
  if (valor >= 0) {
    calculoRecursivo();
  }
}
// Mostre o resultado na tela.

void main() {
  calculoRecursivo();
  print(soma);
}
