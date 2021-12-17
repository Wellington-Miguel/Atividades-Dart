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