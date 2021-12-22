/*conversão de hora
Dado um tempo em minutos, converter para dias, horas e minutos, mostrando o resultado na tela. 
Um dia tem 1440 minutos, ao passo que 1 hora tem 60 minutos.
 Caso o tempo não tenha minutos suficientes para contabilizar dias ou horas, conforme não devem ser exibidos.*/

import 'dart:math';

void main() {
  int min = 2234;
  double dia = min / 1440;
  double hor = (min % 1440) / 60;
  double minf = (min % 1440) % 60;
  //if (minf is double){
  //  double sec =
  //}
  if (dia > 1) {
    print('Dias: ' + dia.toStringAsFixed(0));
  } else {
    print('Dia: ' + dia.toStringAsFixed(0));
  }
  print('Horas: ' + hor.toStringAsFixed(0));
  print('Minutos: :' + minf.toStringAsFixed(0));
}
