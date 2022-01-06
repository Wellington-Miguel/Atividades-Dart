//Instruções -> Criar 4 listas:

void main() {
// Lista A: lista vazia utilizando o construtor de List, que seja possível adicionar mais itens depois.
  final lista_a = List.empty(growable: true);
//Lista B: lista de tamanho 4, preenchida com 2,2 em todas as posições.
  final lista_b = List.filled(4, 2.2);
//Lista C: lista com os mesmos elementos de B, com conteúdo imutável.
  final lista_c = List.unmodifiable(lista_b);
//Lista D: lista que possua todos os elementos de C mais duas posições no final, o número 2 e 3.
  final lista_d = [...lista_c, 2, 3];
//Concatenar uma Lista A e Lista C salvando ou resultado na lista E.
  final lista_e = lista_a + lista_c;
//Criar Lista F, onde se lista E tiver tamanho 4, o primeiro número é o 2.2. Posições seguintes: 5 e 10.
  List lista_f = [if (lista_e.length == 4) 2.2, 5, 10];
//Exibir na tela da Lista E é igual à Lista B.
  print(lista_e == lista_b);
  //Deletar o conteúdo da Lista D.
  lista_d.clear();
//  Exibir na tela se o primeiro elemento da lista F é igual ao último elemento da Lista C.
  print(lista_f.first == lista_c.last);
}
