void main() {
  int ref = 50;
  String contador = '';
  for (int i = 1; i < ref; i++) {
    if (i % 2 == 0) {
      contador += i.toString();
      contador += ' ';
    }
  }
  print(contador);
}
