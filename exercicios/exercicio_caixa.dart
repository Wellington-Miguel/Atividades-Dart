import 'dart:async';
import 'dart:io';
import 'dart:convert';

void caixa(int value) {
  // Escreva seu programa a partir daqui
  var resto;
  var cem = value ~/ 100;
  resto = value % 100;
  var cinq = resto ~/ 50;
  resto = resto % 50;
  var vint = resto ~/ 20;
  resto = resto % 20;
  var dez = resto ~/ 10;
  resto = resto % 10;
  var cinc = resto ~/ 5;
  resto = resto % 5;
}

// Nao deletar
void main() => readLine().listen(processLine);

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) => caixa(int.parse(line.split(' ').first));
