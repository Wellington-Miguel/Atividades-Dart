// Escreva um algoritmo que receba uma lista contendo o nome e o número do jogador.
// O número de jogadores pode variar entre 5 e 11.
// Some todos os números informados pelos jogadores.
// Faça a contagem dos jogadores, de 1 até o total somado (R).
// Se R for maior que a quantidade de jogadores, “dê mais uma volta” começando pelo capitão do time novamente, até alcançar R.
// Imprima na tela o nome do goleiro.
import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(List jogadores) {
  num total = 0;
  for (int i = 0; i < jogadores.length; i++) {
    total += jogadores[i]['numero'];
  }
  print('Resultado: $total');
  int numero_jogador = (total % jogadores.length).toInt();
  if (numero_jogador == 0) {
    print('Goleiro(a): ${jogadores[numero_jogador]['nome']}');
  } else {
    print('Goleiro(a): ${jogadores[numero_jogador - 1]['nome']}');
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
  for (int i = 0; i < inputs.length; i++) {
    Map<String, dynamic> jogador = {
      "nome": inputs[i],
      "numero": int.parse(inputs[i + 1])
    };
    jogadores.add(jogador);
    i++;
  }

  solucao(jogadores);
}
