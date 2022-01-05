void main() {
//Algoritmo:
  var lista = [4, 9, 2, 3, 5];
//Veja uma lista tem mais que 5 itens:
  if (lista.length > 5) {
    int diferenca = lista.length - 5;
//Se a primeira posição para 0 e a última para 10:
    if (lista[0] == 0 && lista.last == 10) {
//Remover determinados itens até que a lista tenha 5 itens, começando da segunda posição.
      lista.removeRange(1, diferenca + 1);
    }
//Caso a primeira posição não seja 0 e a última não seja 10, mas a quarta posição tem o valor de 3:
    else if (lista[0] != 0 && lista.last != 10 && lista[3] == 3) {
//Substituir a primeira posição por 1 e a última por 9.
      lista.first = 1;
      lista.last = 9;
//Remover determinados itens até que a lista tenha 5 itens, onde a penúltima posição será a última a ser excluída.
      int start = (lista.length - (diferenca + 1));
      lista.removeRange(start, lista.last - 1);
    }
//Caso nenhuma condição seja satisfeita:
    else {
      //Deletar o último item.
      lista.remove(lista.last);
      //Se ainda maior que 5: remover o primeiro.
      if (lista.length > 5) {
        lista.remove(lista.first);
      }
      //Se ainda maior que 5: remover do inicio até chegar em 5 itens
      if (lista.length > 5) {
        int difer2 = lista.length - 5;
        lista.removeRange(0, difer2 - 1);
      }
    }
  }
  //Veja se a lista tem menos ou 5 itens:
  //Adicionar o número 2 no final até completar 5 itens, se possível
  else if (lista.length < 5) {
    int sobra = 5 - lista.length;
    final encremento = List.filled(sobra, 2);
    lista = [...encremento];
    //Colocar o número 8 na segunda posição,
    lista[1] = 8;
  }
  //Agora que você tem certeza que sua lista tem 5 itens e segue o padrão acima, calcular:
//Somar a segunda posição com a quarta;
  var soma = lista[1] + lista[3];
//Dividir a quinta posição com a terceira;
  var divisao = lista[4] / lista[2];
  var result = soma * divisao;

//Se a multiplicação de 3.a. por 3.b. para maior que 15, exibir: "Lista válida", caso contrário, "Lista inválida"
  if (result > 15) {
    print("Lista válida");
  } else {
    print("Lista inválida");
  }
}
