import 'dart:io';

// Instruções
void main() {
//Escreva um algoritmo em Dart para calcular o desconto de 10% sobre o preço de compra de um produto (um bem, um objeto).
  double? valor = double.parse(stdin.readLineSync()!);
  print('  Preço do produto: R\$ $valor');
  double desconto = valor * 0.1;
  print('  Desconto de 10%: R\$ $desconto');
  double valorfinal = valor - desconto;
  print('  Preço do produto com desconto: R\$ $valorfinal');
//Apresente o novo preço na tela.
}
