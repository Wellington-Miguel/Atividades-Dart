import 'dart:io';

void main() {
  print('Informe um valor multiplo de 5:');
  int? valor = int.parse(stdin.readLineSync()!);
  if (valor % 5 == 0) {
    print(valor * 2);
  } else {
    print('O valor informado não corresponde ao solicitado, tende outra vez!');
  }
}
