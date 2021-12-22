/*Uma vez que 3 números sejam adicionados ao seu programa, nós precisamos fazer a ordenação em ordem decrescente.
Caso algum número repetido seja adicionado, o programa deve exibir a mensagem de erro "Entre apenas numeros diferentes". */
//Exercício retirado do Hackerrank
import 'dart:io';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  // Variaveis iniciais
  final num1 = int.parse(inputs[0]);
  final num2 = int.parse(inputs[1]);
  final num3 = int.parse(inputs[2]);
  // Escreva seu programa a partir daqui
  var pri;
  var seg;
  var ter;
  if (num1 == num2 || num2 == num3 || num3 == num1) {
    print("Entre apenas numeros diferentes");
  } else {
    if (num1 > num2 && num1 > num3) {
      pri = num1;
      if (num2 > num3) {
        seg = num2;
        ter = num3;
      } else if (num2 < num3) {
        seg = num3;
        ter = num2;
      }
    } else if (num1 > num2 && num1 < num3) {
      pri = num3;
      seg = num1;
      ter = num2;
    } else if (num1 < num2 && num1 > num3) {
      seg = num1;
      if (num2 > num3) {
        pri = num2;
        ter = num3;
      } else if (num2 < num3) {
        pri = num3;
        ter = num2;
      }
    } else if (num1 < num2 && num1 < num3) {
      ter = num1;
      if (num2 > num3) {
        pri = num2;
        seg = num3;
      } else if (num2 < num3) {
        pri = num3;
        seg = num2;
      }
    }

    print('$pri $seg $ter');
  }
}
