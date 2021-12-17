//-Exercício IMC-
Objetivo = cálculo de massa corporal 
Formula = IMC= peso/ altura^2
Teste = peso =80kg; altura = 1,7m//

void main() {
 double peso = 80;
  double altura= 1.70;
  double result = peso/(altura*altura);
  String resultString = result.toStringAsFixed(2);
  print(resultString);
}

save into another file.dart

//Função do 2 grau//
import 'dart:math';
void main() {
 int a = 1;
  int b= -1;
  int c = -12;
  int delta = pow(b,2)-(4*a*c);
  // pow = expoente; modelo = pow(variável, expoente// 
  double rzdelta = sqrt(delta);
  double x1 = (-b+rzdelta)/ (2*a);
  double x2 = (-b-rzdelta)/ (2*a);
  print ('x1=$x1 x2=$x2');
  }
  
 save into another file.dart

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
<<<<<<< HEAD:Exercícios.dart
--------------------------------------------------
=======

save into another file.dart

//triângulos//
import 'dart:math';
void main() {
int a = 8;
 int b= 15;
  int c= 17;
  bool retang = (pow(a,2)+pow(b,2))==pow(c,2);
  //print (retang);
  if(c<=(a+b)){
    print('É um trinângulo');
    if (a==b && b==c){
       print('Trinângulo equilatero');
    } else if (a==b || c==b || c==a){
       print('Trinângulo isôsceles');
    } else {
       print('Trinângulo escaleno');
    }
  } if (retang){
    print('Trinângulo retângulo');
    
   } 
  else {
    print ('Não é um triângulo');
  }
  
}


save into another file.dart
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
>>>>>>> 7e2b8b213eb699caafc09aed8a1063b3bd614b5e:Exercícios

---------------------------------------------------
