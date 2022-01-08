void main() {
  List<String> nome = [
    'Maurício',
    'Marcelo',
    'Tande',
    'Giovane',
    'Paulo',
    'Carlos'
  ];
  List<int> saques = [8, 15, 11, 11, 9, 10];
  List<int> saque_efetivo = [4, 10, 6, 5, 2, 3];
  List<int> bloqueios = [18, 8, 14, 10, 15, 10];
  List<int> bloqueios_efetivos = [12, 5, 12, 8, 12, 3];
  List<int> ataques = [2, 21, 15, 18, 15, 12];
  List<int> ataques_efetivos = [1, 10, 11, 12, 10, 8];
  for (int i = 0; i < nome.length; i++) {
    print('Jogador: ${nome[i]}');
    double porcentagem = (saque_efetivo[i] / saques[i]) * 100;
    print(
        'Saque: ${saque_efetivo[i]}/${saques[i]} (${porcentagem.toStringAsFixed(1)}%)');
    double porcentagem_block = (bloqueios_efetivos[i] / bloqueios[i]) * 100;
    print(
        'Bloqueio: ${bloqueios_efetivos[i]}/${bloqueios[i]} (${porcentagem_block.toStringAsFixed(1)}%)');
    double porcentagem_at = (ataques_efetivos[i] / ataques[i]) * 100;
    print(
        'Ataque: ${ataques_efetivos[i]}/${ataques[i]} (${porcentagem_at.toStringAsFixed(1)}%) \n ');
  }
  int soma_saques = 0;
  int soma_saque_efetivo = 0;
  int soma_bloqueios = 0;
  int soma_bloqueios_efetivo = 0;
  int soma_ataques = 0;
  int soma_ataques_efetivo = 0;
  for (int j = 0; j < nome.length; j++) {
    soma_saques += saques[j];
    soma_saque_efetivo += saque_efetivo[j];
    soma_bloqueios += bloqueios[j];
    soma_bloqueios_efetivo += bloqueios_efetivos[j];
    soma_ataques += ataques[j];
    soma_ataques_efetivo += ataques_efetivos[j];
  }
  print('Resultado (equipe)');
  double porcentagem_saquetotal = (soma_saque_efetivo / soma_saques) * 100;
  print(
      'Pontos de Saque: $soma_saque_efetivo/$soma_saques(${porcentagem_saquetotal.toStringAsFixed(1)}%)');
  double porcentagem_blocktotal =
      (soma_bloqueios_efetivo / soma_bloqueios) * 100;
  print(
      'Pontos de Bloqueio: $soma_bloqueios_efetivo/$soma_bloqueios (${porcentagem_blocktotal.toStringAsFixed(1)}%)');
  double porcentagem_attotal = (soma_ataques_efetivo / soma_ataques) * 100;
  print(
      'Pontos de Ataque: $soma_ataques_efetivo/$soma_ataques (${porcentagem_attotal.toStringAsFixed(1)}%) \n  ');
}
