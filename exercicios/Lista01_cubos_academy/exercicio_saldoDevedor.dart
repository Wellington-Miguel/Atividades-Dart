/*Objetivo
Encontrar o valor do saldo devedor de um consórcio.*/
import 'dart:io';

// Instruções
void main() {
// Atendimento que, para um consórcio, sabe-se o número total de parcelas, a quantidade de parcelas pagas e o valor da parcela (fixa);
  print('Total de Parcelas:');
  int? totalParcelas = int.parse(stdin.readLineSync()!);
  print('Total de Parcelas pagas:');
  int? pagasParcelas = int.parse(stdin.readLineSync()!);
  print('Valor das Parcelas:');
  double? valorParcelas = double.parse(stdin.readLineSync()!);
// Escreva um algoritmo em Dart para calcular o saldo devedor do cliente.
  double totalConsorcio = valorParcelas * totalParcelas;
  double saldoDevedor = totalConsorcio - (valorParcelas * pagasParcelas);
// Mostre na tela o valor total do consórcio e o saldo devedor.
  print('Valor total do consórcio: R\$ $totalConsorcio');
  print('Saldo devedor: R\$ $saldoDevedor');
}
