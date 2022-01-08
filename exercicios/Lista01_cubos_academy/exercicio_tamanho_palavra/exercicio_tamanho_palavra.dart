import 'dart:io';

void main() {
  print('Digite uma palavra para saber quantas letras ela possui:');
  String? name = stdin.readLineSync();
  int tamanho = name!.length;
  print('A palavra "$name" tem $tamanho letras.');
}
