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
  carroEsporte.combustivel = 'flex';
  carroClassico.combustivel = 'erro';
  carroPopular.combustivel = 'gasolina';

// Mostre na tela cada um dos carros.
  print('Montadora: ${carroEsporte.nomeMontadora}');
  print('Modelo: ${carroEsporte.modelo}');
  print('Cor: ${carroEsporte.cor}');
  print('PotÊncia do motor: ${carroEsporte.potenciaMotor}');
  print('Combustível: ${carroEsporte.combustivel} \n');

  print('Montadora: ${carroClassico.nomeMontadora}');
  print('Modelo: ${carroClassico.modelo}');
  print('Cor: ${carroClassico.cor}');
  print('PotÊncia do motor: ${carroClassico.potenciaMotor}');
  print('Combustível: ${carroClassico.combustivel}\n');

  print('Montadora: ${carroPopular.nomeMontadora}');
  print('Modelo: ${carroPopular.modelo}');
  print('Cor: ${carroPopular.cor}');
  print('PotÊncia do motor: ${carroPopular.potenciaMotor}');
  print('Combustível: ${carroPopular.combustivel}\n');
}
