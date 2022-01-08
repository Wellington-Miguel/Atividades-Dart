/*Objetivo
Construir um Menu de opções para gerenciar (manter) os registros dos usuários do sistema.

Instruções
Escreva um algoritmo em Dart que construa um menu de cadastro com as opções:
C) Create	(Cadastrar/Inserir)
R) Read		(Buscar/Ler)
U) Update	(Editar/Atualizar)
D) Delete	(Excluir/Apagar)*/
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
