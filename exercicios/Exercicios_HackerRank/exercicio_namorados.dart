// Escreva um algoritmo para calcular o valor dos produtos do "carrinho de compras" do cliente.
// Crie um array chamado carrinhoCompras que receba o valor dos itens comprados pelo usuário.
// O array pode guardar no máximo 100 itens. Se tiver mais de 100 itens, mostra a mensagem "Carrinho cheio".
// Se houver 3 itens ou mais no array, verifique qual produto tem o menor valor e aplique o desconto de 50% neste produto.
// Mostre o valor total da compra.
import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(List<double> carrinhoCompras) {
  if (carrinhoCompras.length > 100) {
    print('Carrinho cheio');
  } else if (carrinhoCompras.length >= 3) {
    carrinhoCompras.sort();
    carrinhoCompras[0] = carrinhoCompras[0] * 0.5;
    double total = carrinhoCompras.reduce((value, element) => value + element);
    print('Total: R\$ ${total.toStringAsFixed(2)}');
  } else {
    double total = carrinhoCompras.reduce((value, element) => value + element);
    print('Total: R\$ ${total.toStringAsFixed(2)}');
  }
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');

  solucao(inputs.map((element) => double.parse(element)).toList());
}
