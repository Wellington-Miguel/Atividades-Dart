//conversão de hora//
import 'dart:math';
void main() {
int min = 2234;
double dia = min/1440;
double hor = (min%1440)/60;  
double minf = (min%1440)%60;
  //if (minf is double){
  //  double sec = 
  //} 
  if (dia>1){
  print ('Dias: ' + dia.toStringAsFixed(0));
  } else {
    print ('Dia: ' + dia.toStringAsFixed(0));
  }
  print ('Horas: ' + hor.toStringAsFixed(0));
  print ('Minutos: :' + minf.toStringAsFixed(0));
 
}

