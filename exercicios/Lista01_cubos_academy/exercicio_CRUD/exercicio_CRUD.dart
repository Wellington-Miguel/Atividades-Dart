import 'dart:io';

void main() {
  print(
      ' C) Create	(Cadastrar/Inserir) \n R) Read        (Buscar/Ler) \n U) Update	(Editar/Atualizar) \n D) Delete	(Excluir/Apagar)');
  String? menu = stdin.readLineSync();
  if (menu == 'c' || menu == 'C') {
    print('Cadastrar/Inserir');
  } else if (menu == 'r' || menu == 'R') {
    print('Buscar/Ler');
  } else if (menu == 'u' || menu == 'U') {
    print('Editar/Atualizar');
  } else if (menu == 'd' || menu == 'D') {
    print('Excluir/Apagar');
  }
}
