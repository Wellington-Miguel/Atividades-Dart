void main() {
  int limit = 200;
  int contador = 0;
  for (int i = 1; i <= limit; i++) {
    if (i % 2 != 0) {
      contador = i * i;
      print('$i * $i = $contador');
    }
  }
}
