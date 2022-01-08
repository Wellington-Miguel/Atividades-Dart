import 'dart:io';

void main() {
  int? valor = int.parse(stdin.readLineSync()!);
  String contador = '';
  for (int i = 1; i <= valor; i++) {
    contador += i.toString();
    contador += i < valor ? ',' : '';
  }
  print(contador);
}
