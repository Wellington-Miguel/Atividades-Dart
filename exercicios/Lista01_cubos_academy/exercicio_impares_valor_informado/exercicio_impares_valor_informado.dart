import 'dart:io';

void main() {
  print('Informe um valor para exibir os números ímpares anteriores:');
  int? valor = int.parse(stdin.readLineSync()!);
  String impares = '';
  for (int i = 1; i <= valor; i++) {
    if (i % 2 != 0) {
      impares += i.toString();
      impares += i < valor ? ',' : '';
    }
  }
  print(impares);
}
