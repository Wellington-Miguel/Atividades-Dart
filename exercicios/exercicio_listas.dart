/*I
nstruções
Criar 4 listas:
Lista A: lista vazia utilizando o construtor de List, que seja possível adicionar mais itens depois.
Lista B: lista de tamanho 4, preenchida com 2,2 em todas as posições.
Lista C: lista com os mesmos elementos de B, com conteúdo imutável.
Lista D: lista que possua todos os elementos de C mais duas posições no final, o número 2 e 3.
Concatenar uma Lista A e Lista C salvando ou resultado na lista E.
Criar Lista F, onde se lista E tiver tamanho 4, o primeiro número é o 2.2. Posições seguintes: 5 e 10.
Exibir na tela da Lista E é igual à Lista B.
Deletar o conteúdo da Lista D.
Exibir na tela se o primeiro elemento da lista F é igual ao último elemento da Lista C.
*/

import 'dart:ffi';

void main() {
  List lista_a = [];
  List lista_b = [2.2, 2.2, 2.2, 2.2];
  const lista_c = [2.2, 2.2, 2.2, 2.2];
  List lista_d = [];
  lista_d.addAll(lista_c);
  lista_d.add(2);
  lista_d.add(3);
  List lista_e = [];
  lista_e.addAll(lista_a);
  lista_e.addAll(lista_c);
  List lista_f = [];
  if (lista_e.length == 4) {
    lista_f.add(2.2);
    lista_f.add(5);
    lista_f.add(10);
  }
  print(lista_f);
  print(lista_e);
  print(lista_d);
  print(lista_c);
  print(lista_b);
  print(lista_a);
}
