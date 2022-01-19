// Escreva um algoritmo em Dart que calcule o total acumulado no cofre até agora.
// O Algoritmo deve receber o nome e uma lista de valores.
// Mostre na tela o total acumulado nessa lista e a média dos depósitos.
import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(String nome, List<double> cofre) {
  double soma = 0;
  cofre.forEach((element) {
    soma += element;
  });
  print(
      '$nome ja tem R\$ ${soma.toStringAsFixed(1)} guardados!\nA media dos depesitos e de R\$ ${(soma / cofre.length).toStringAsFixed(1)} por mes.');
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  solucao(inputs[0], inputs.sublist(1).map(double.parse).toList());
}
