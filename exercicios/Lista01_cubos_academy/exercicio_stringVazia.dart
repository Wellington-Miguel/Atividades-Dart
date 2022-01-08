/*Objetivo
Verifique se o usuário informou o nome.*/
import 'dart:io';

// Instruções
void main() {
// Escreva um algoritmo em Dart que se o usuário informou o nome.
  String? name = stdin.readLineSync();
// Se o nome estiver em branco, mostre uma frase "Bem-vindo (a) visitante!".
  if (name == '') {
    print('Bem-vindo(a) visitante!');
  } else {
    print('Bem-vindo(a) $name!');
  }
// Senão escreveu "Bem-vindo (a)" e o nome do usuário (ex: "Bem-vindo (a) Marnei").
}
