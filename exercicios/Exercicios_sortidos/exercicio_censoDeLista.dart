/*Objetivo
Você trabalha num instituto de pesquisas e sua missão é criar um algoritmo que encontre o censo de um lista, 
exibindo o maior número, o menor número, a média dos números na lista e a quantidade de números ímpares e pares. */
//Instruções
void main() {
  final lista = [3, 5, 10, 2, 5, 1, 2, 3, 6, 12, 15, 22, 8, 4, 13, 25];
  final tamanho = lista.length;
//Criar uma variável para salvar o maior,
  int maior = 0;
// o menor
  int menor = lista.first;
//a média,
  double media = 0;
//quantidade de números ímpares e pares.
  int par = 0;
  int impar = 0;
//Iterar sobre a lista.
  for (int i = 0; i < tamanho; i++) {
//Se o número atual for maior que o anterior, salvar o valor.
    if (lista[i] > maior) {
      maior = lista[i];
    }
//O mesmo vale para o menor.
    if (lista[i] != 0 && lista[i] < menor) {
      menor = lista[i];
    }
//Para a média, somar o valor atumenoral com o já salvo na variável.
    media = media + lista[i];
// Para os números ímpares ou pares, algo bem parecido com a média, mas só somar caso a condição seja atendida.
    if (lista[i] % 2 == 0) {
      par++;
    } else if (lista[i] % 2 != 0) {
      impar++;
    }
  }
//Após a iteração, dividir a média pelo tamanho da lista.
  media = media / tamanho;
//Exibir o maior, o menor, a média e a quantidade de números pares e ímpares.
  print(
      'Maior: $maior, Menor: $menor, Média: $media, Ímpares: $impar, Pares: $par');
}
