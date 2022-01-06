/*Objetivo
O fatorial de um número é seguido seguindo a seguinte lógica:

$ n! = n * (n-1) * (n-2) * (n-3) * 3 * 2 * 1 $

Por exemplo: 6! = 6 * 5 * 4 * 3 * 2 * 1 = 720

Por definição, 0! = 1! = 1

Sabendo disso, criar um algoritmo que faça o cálculo do fatorial.*/
void main() {
//Instruções
//Criar uma variável para guardar o valor do fatorial.
  var fat = 5;
//Criar um loop que vá do numero n até 1 (ou vice-versa).
  for (int i = fat - 1; i >= 1; i--) {
//A cada iteração, multiplicar o número atual variável pela que guarda o valor do fatorial.
    fat *= i;
  }
//Exibir o valor na tela
  print(fat);
}
