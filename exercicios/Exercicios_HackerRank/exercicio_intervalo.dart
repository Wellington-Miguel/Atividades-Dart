// Faça um algoritmo que receba três argumentos: numero, limiteInferior e limiteSuperior.
// Verificar se o número informado pertence ao conjunto que é limitado pelo limiteInferior e limiteSuperior.
// Pertencer ao conjunto significa que o número informado deve ser maior ou igual ao limiteInferior e menor ou igual ao limiteSuperior.
import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(num numero, num limiteInferior, num limiteSuperior) {
  String resultado = '';
  if (numero >= limiteInferior && numero <= limiteSuperior) {
    resultado = 'Pertence';
  } else {
    resultado = 'Nao pertence';
  }
  print(resultado);
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  solucao(num.parse(inputs[0]), num.parse(inputs[1]), num.parse(inputs[2]));
}
