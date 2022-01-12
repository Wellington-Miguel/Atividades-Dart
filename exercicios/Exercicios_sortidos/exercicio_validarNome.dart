// Objetivo
// Verificar se a pessoa pode dirigir.
import 'dart:io';

// Instruções
String nome = '';
int dia = 0;
int mes = 0;
int ano = 0;
int idadeatual = 0;
void main() {
  imput();
  idade();
  dirigir();
}

// Escreva um algoritmo em Dart que receba o nome e a data de nascimento de uma pessoa (dia, mês e ano).
void imput({String? imputName, int? imputDia, int? imputMes, int? imputAno}) {
  print('Digite seu nome:');
  String? imputName = stdin.readLineSync();
  print('Digite o dia do seu nascimento:');
  int? imputDia = int.parse(stdin.readLineSync()!);
  print('Digite o mês do seu nascimento:');
  int? imputMes = int.parse(stdin.readLineSync()!);
  print('Digite o ano do seu nascimento:');
  int? imputAno = int.parse(stdin.readLineSync()!);
  nome = imputName.toString();
  dia = imputDia;
  mes = imputMes;
  ano = imputAno;
}

// Crie uma function para calcular a idade atual.
int idade({int mesatual = 1, int diaAtual = 12}) {
  idadeatual = 2020 - (ano - 1);
  if (mes <= mesatual && dia <= diaAtual) {
    idadeatual++;
  }
  return idadeatual;
}

// Se a idade for maior ou igual a 18 anos, mostre "Pode dirigir!".
// Senão, mostre "Não pode dirigir".
void dirigir() {
  if (idadeatual >= 18) {
    print('\n Nome: $nome \n Idade: $idadeatual \n Pode dirigir! \n');
  } else {
    print('\n Nome: $nome \n Idade: $idadeatual \n Não Pode dirigir! \n');
  }
}
