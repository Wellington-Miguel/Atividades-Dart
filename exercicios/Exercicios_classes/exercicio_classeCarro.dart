/* Criar objetos da classe Carro com características diferentes para cada modelo.*/
// Instruções
// Escreva um algoritmo em Dart que tenha uma classe chamada Carro com os seguintes campos (atributos):
// Nome da Montadora (Fabricante)
// Modelo
// Cor
// Potência do motor
// Tipo de combustível (gasolina, alcool, flex)
class Carro {
  String nomeMontadora;
  String modelo;
  String cor;
  String potenciaMotor;
  String _combustivel = 'A definir..';
  Carro(this.nomeMontadora, this.modelo, this.cor, this.potenciaMotor);
//Tentativa de controlar o tipo de combustível através do get e set
// Ainda inacaba o valor só está sendo adicionado uma vez
  String get combustivel {
    return _combustivel;
  }

  set combustivel(String combustivel) {
    if (combustivel != 'gasolina' &&
        combustivel != 'alcool' &&
        combustivel != 'flex') {
      _combustivel = 'Informado incorretamente';
    } else {
      _combustivel = combustivel;
    }
  }
}

// No método main, crie 3 objetos da classe Carro, com características diferentes.
void main() {
  Carro carroEsporte = Carro('Audi', 'Audi TT RS', 'Vermelho', '400 HP');
  Carro carroClassico = Carro('WV', 'Fusca', 'Azul', '100 HP');
  Carro carroPopular = Carro('Chevrolet', 'Prima', 'Branco', '200 HP');
  carroEsporte.combustivel = 'erro';
  carroClassico.combustivel = 'erro';
  carroPopular.combustivel = 'gasolina';
// Mostre na tela cada um dos carros.
  print(
      'Montadora: ${carroEsporte.nomeMontadora} \n Modelo: ${carroEsporte.modelo}\n Cor: ${carroEsporte.cor} \n PotÊncia do motor: ${carroEsporte.potenciaMotor} \n Combustível: ${carroEsporte.combustivel}');
  print(
      'Montadora: ${carroClassico.nomeMontadora} \n Modelo: ${carroClassico.modelo}\n Cor: ${carroClassico.cor} \n PotÊncia do motor: ${carroClassico.potenciaMotor} \n Combustível: ${carroEsporte.combustivel}');
  print(
      'Montadora: ${carroPopular.nomeMontadora} \n Modelo: ${carroPopular.modelo}\n Cor: ${carroPopular.cor} \n PotÊncia do motor: ${carroPopular.potenciaMotor} \n Combustível: ${carroEsporte.combustivel}');
}
