//   Desenvolver uma aplicação que determine qual a idade da pessoa mais nova,
//dentre os que podem participar (maiores de idade).

// Instruções
// Escreva um algoritmo em Dart que receba uma lista contendo as idades das pessoas que tentam participar.
// Imprima na tela a idade da pessoa mais jovem que pode participar.
// Se ninguém puder participar, imprima na tela a mensagem “Cresça e apareça”.
import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(List<int> idades) {
  List<int> adultos = idades.where((element) => element >= 18).toList();
  if (adultos.isEmpty) {
    print('Cresça e apareça');
  } else {
    adultos.sort();
    print(adultos[0]);
  }
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  solucao(inputs.map((s) => int.parse(s)).toList());
}
