/* Equaçãoa do 2 grau
Encontrar raízes (x1 e x2) de uma equação de segundo grau. */

import 'dart:math';

void main() {
  int a = 1;
  int b = -1;
  int c = -12;
  num delta = pow(b, 2) - (4 * a * c);
  // pow = expoente; modelo = pow(variável, expoente//
  double rzdelta = sqrt(delta);
  double x1 = (-b + rzdelta) / (2 * a);
  double x2 = (-b - rzdelta) / (2 * a);
  print('x1=$x1 x2=$x2');
}
