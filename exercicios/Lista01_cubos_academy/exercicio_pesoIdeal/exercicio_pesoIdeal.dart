/*Objetivo
Calcular o peso ideal de uma pessoa, conforme altura e sexo.
Escreva um algoritmo em Dart que calcule e imprima seu peso ideal, seguindo as seguintes fórmulas:
Mulheres: (62.1 * altura) - 44.7
Homens: (72.7 * altura) - 58
Tendo como entrada a altura e o sexo (F: feminino ou M: masculino) de uma pessoa.*/
import 'dart:io';

void main() {
  double? altura = double.parse(stdin.readLineSync()!);
  String? sexo = stdin.readLineSync();
  if (sexo == 'M' || sexo == 'm') {
    double peso = (72.7 * altura) - 58;
    print('Peso ideal: $peso Kg');
  } else if (sexo == 'F' || sexo == 'f') {
    double peso = (62.1 * altura) - 44.7;
    print('Peso ideal: $peso Kg');
  }
}
