/*
Os caixas de autoatendimento de um banco precisam ser muito eficientes para o melhor uso das cédulas de dinheiro. 
Você foi convidado para criar um algoritmo para utilizar o menor número possível de cédulas de 100, 50, 20, 10, 5 e 2. 
Dado que o usuário deseja fazer um saque de um valor inteiro (0 centavos), nosso programa precisa emitir quantas notas serão necessárias de cada cédula.
Dica: Prestem atenção em valores terminados com 1 e 3, já que nosso caixa não possui cédulas de 1. 
Uma das formas de resolver esse problema é verificando o resto da divisão por 5.
*/
import 'dart:async';
import 'dart:io';
import 'dart:convert';

void caixa(int value) {
  // Escreva seu programa a partir daqui
  int cem = 0;
  int cinquenta = 0;
  int vinte = 0;
  int dez = 0;
  int cinco = 0;
  int dois = 0;
  var contagem;
  var texto = '';
  var separador = '';
  if (value % 5 == 1) {
    value = value - 4;
    dois = 2;
  }
  if (value % 5 == 3) {
    value = value - 6;
    dois = dois + 3;
  }
  if (value >= 100) {
    cem = value ~/ 100;
    contagem = value % 100;
    texto = '$cem de 100';
  } else {
    contagem = value;
  }
  if (contagem >= 50) {
    cinquenta = contagem ~/ 50;
    contagem = contagem % 50;
    separador = texto.isEmpty ? '' : ', ';
    texto += '$separador$cinquenta de 50';
  }
  if (contagem >= 20) {
    vinte = contagem ~/ 20;
    contagem = contagem % 20;
    separador = texto.isEmpty ? '' : ', ';
    texto += '$separador$vinte de 20';
  }
  if (contagem >= 10) {
    dez = contagem ~/ 10;
    contagem = contagem % 10;
    separador = texto.isEmpty ? '' : ', ';
    texto += '$separador$dez de 10';
  }
  if (contagem >= 5) {
    cinco = contagem ~/ 5;
    contagem = contagem % 5;
    separador = texto.isEmpty ? '' : ', ';
    texto += '$separador$cinco de 5';
  }
  if (contagem >= 2) {
    int dois2 = contagem ~/ 2;
    dois += dois2;
    separador = texto.isEmpty ? '' : ', ';
    texto += '$separador$dois de 2';
  }
  print(texto);
}

// Nao deletar
void main() => readLine().listen(processLine);

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) => caixa(int.parse(line.split(' ').first));
