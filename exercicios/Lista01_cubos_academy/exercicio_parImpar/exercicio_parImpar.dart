import 'dart:io';

// Instruções
void main() {
// Escreva um algoritmo em Dart que receba 1 valor inteiro.
  print(
      'Infrome uma valor para verificarmos se é:\n Ímpar    -    Par     -    Zero');
  int? valor = int.parse(stdin.readLineSync()!);
// Mostre se o valor é: Par, Ímpar ou Zero
  if (valor % 2 == 0 && valor != 0) {
    print('Par');
  } else if (valor % 2 != 0) {
    print('Ímpar');
  } else if (valor == 0) {
    print('Zero');
  }
}
