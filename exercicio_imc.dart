/*-Exercício IMC-
Objetivo = cálculo de massa corporal 
Formula = IMC= peso/ altura^2
Teste = peso =80kg; altura = 1,7m */

void main() {
 double peso = 80;
  double altura= 1.70;
  double result = peso/(altura*altura);
  String resultString = result.toStringAsFixed(2);
  print(resultString);
}

