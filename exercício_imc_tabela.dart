 //imc tabela//
import 'dart:math';
void main() {
double peso = 84;
double altura = 1.78;
double imc= peso/pow(1.7,2);
  String result = imc.toStringAsFixed(2);
  print ('Seu IMC é $result');
  if (imc < 18.5){
    print ('Abaixo do peso');  
  } else if (imc >= 18.5 && imc<25){
     print ('Na média / saudável');
  } else if (imc >= 25 && imc<30){
     print ('Acima do peso');  
  }else{
     print ('Obesidade'); 
  }
}