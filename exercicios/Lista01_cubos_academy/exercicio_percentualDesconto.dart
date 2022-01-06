/*Objetivo
Encontrar o desconto barato pelo usuário sobre o preço de compra de um produto.*/
// Instruções
import 'dart:io';

void main() {
// Escreva um algoritmo em Dart que receba um percentual de desconto e o preço de um produto.
  double? porcent = double.parse(stdin.readLineSync()!);
  double? valor = double.parse(stdin.readLineSync()!);
  print('  Preço do produto: R\$ $valor');
// Calcule esse desconto sobre o preço de compra do produto (um bem, um objeto).
  double desconto = 500 * (porcent / 100);
// Apresentando o valor do desconto e o novo preço do produto.
  print('  Desconto de $porcent%: R\$ $desconto');
  double vlfinal = valor - desconto;
  print('  Preço do produto com desconto: R\$ $vlfinal');
}
