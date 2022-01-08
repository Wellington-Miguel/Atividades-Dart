/*Objetivo
Verifique se o usuário informou um valor.*/
import 'dart:io';

// Instruções
void main() {
// Escreva um algoritmo em Dart que se o usuário informou o valor.
  String? valor = stdin.readLineSync();
// Se o valor para nulo, mostre uma frase "NullPointerException: Erro ao acessar um valor nulo na memória".
  if (valor == '') {
    print('NullPointerException: Erro ao acessar um valor nulo na memória');
  } else {
// Senão escreve "Valor se:" e o valor (ex: "Valor se escreve: 23").
    print('Valor informado: $valor');
  }
}
