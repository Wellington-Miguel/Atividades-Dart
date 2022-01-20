// Você deve implementar o cálculo do valor a ser pago pelo cliente.

// Escreva um algoritmo que calcule o valor de uma viagem, conforme o tempo e distância percorridos.
// Deve cobrar 70 centavos por cada quilômetro de viagem e 50 centavos por minuto de viagem
// A entrada é 2 variáveis, minuto que é a duração da viagem e km que é o quilômetro pecorrido.
// Se a viagem tiver mais de 10km, cada km adicional custa 50 centavos por km.
// Se a viagem durar mais de 20 minutos, cada minuto adicional custa 30 centavos por minuto.
// Imprima na tela o valor que deve ser pago pelo cliente.
// Lembre-se de arredondar o valor final a ser pago.
import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(double minuto, double km) {
  double km_adicional = 0;
  double min_adicional = 0;
  double pagamento = 0;
  if (km > 10) {
    km_adicional = km - 10;
    pagamento += ((km - km_adicional) * 0.7) + (km_adicional * 0.5);
  } else {
    pagamento += km * 0.7;
  }
  if (minuto > 20) {
    min_adicional = minuto - 20;
    pagamento += ((minuto - min_adicional) * 0.5) + (min_adicional * 0.3);
  } else {
    pagamento += minuto * 0.5;
  }
  print('Total a pagar: R\$ ${pagamento.toStringAsFixed(2)}');
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');

  solucao(double.parse(inputs[0]), double.parse(inputs[1]));
}
