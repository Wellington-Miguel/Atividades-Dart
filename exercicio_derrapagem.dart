//Exercício retirado do Hackerrank
// O Tesla Model X é um carro autônomo que consegue dirigir sozinho.
//Para evitar acidentes, o carro deve ser capaz de calcular qual a distância que ele percorrerá, ao iniciar o processo de frenagem, até parar.
//Você acabou de ser contratado (a) como desenvolver (a) de software na Tesla. Sua primeira tarefa é fazer um programa capaz de calcular essa distância.
// A fórmula para o cálculo é a seguinte: distância = -velocidade ² / 2*aceleração

import 'dart:io';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  // Variaveis iniciais
  final velocidade = int.parse(inputs[0]);
  final aceleracao = int.parse(inputs[1]);

  // Escreva seu programa a partir daqui
  double distancia = -(velocidade * velocidade) / (aceleracao * 2);
  print(distancia);
}
