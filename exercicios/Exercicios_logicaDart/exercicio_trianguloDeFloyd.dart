/* Objetivo:
riar um algoritmo que exiba o triângulo de Floyd a partir da quantidade de linhas n desejada. 
Por exemplo, para 5 linhas, a saída esperada é:
1
2 3
4 5 6
7 8 9 10
11 12 13 14 15 */

//Instruções:
void main() {
  final n = 5;
//criar uma variável para armazenar a soma a cada iteração
  int soma = 0;
//Criar uma iteração que seja possível continuar a soma a cada linha
  for (int i = 1; i <= n; i++) {
    String linha = "";
    for (int s = 1; s <= i; s++) {
      soma++;
      String separador = linha.isEmpty ? '' : ' ';
      linha += '$separador$soma';
    }
    //Exibir a linha na tela
    print(linha);
  }
}
