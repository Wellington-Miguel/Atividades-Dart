// Desenvolver uma aplicação para verificar se o valor informado pelos jogadores
// está dentro do limite de mínimo e máximo permitido.
// Instruções
// Escreva um algoritmo em Dart que selecione dentre uma lista de jogadores, apenas
//os valores permitidos para se jogar numa determinada mesa de poker.
// O algoritmo deve receber o valor mínimo e máximo permitidos, e a lista de jogadores.
// Mostre os jogadores com os valores entre o mínimo e o máximo permitidos.
import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(num valorMinimo, num valorMaximo, List jogadores) {
  print(
      'Valor minimo da mesa: R\$ $valorMinimo\nValor maximo da mesa: R\$ $valorMaximo\n');
  print('Jogadores da mesa:');
  for (int i = 0; i < jogadores.length; i++) {
    if (jogadores[i]['valor'] >= valorMinimo && jogadores[i] <= valorMaximo) {
      print(jogadores[i]['nome']);
    }
  }
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  List jogadores = [];
  for (int i = 2; i < inputs.length; i++) {
    Map<String, dynamic> jogador = {};
    jogador["nome"] = inputs[i];
    jogador["valor"] = int.parse(inputs[++i]);
    jogadores.add(jogador);
  }
  solucao(double.parse(inputs[0]), double.parse(inputs[1]), jogadores);
}
