// Calcular o salário dos funcionários da empresa, considerando as horas extras, comissão por venda e bonificação.
// Instruções
// Escreva um algoritmo em Dart que receba matrícula, nome, sobrenome, salário e número de horas trabalhadas.
//Crie a classe Funcionario com os seguintes campos (atributos):

class Funcinarios {
  int matricula;
  String nome;
  String sobrenome;
  double salario;
  double horas_trabalhadas;
  Funcinarios(this.matricula, this.nome, this.sobrenome, this.salario,
      this.horas_trabalhadas);
// Ainda na classe Funcionario, crie um método para calcular as horas extras dos funcionários, considerando o padrão de 220 horas mensais.
  double hrExtras({double? porcent}) {
    return (salario * porcent!) + salario;
  }
}

// Crie as classes Caixa, Vendedor e Gerente, que herdam da classe Funcionario.
// Usando Polimorfismo, sobrescreva o método que calcula as horas extras, adicionando + 20% de comissão para o vendedor e + 35% de bonificação para o gerente.
class Vendedor extends Funcinarios {
  Vendedor(int matricula, String nome, String sobrenome, double salario,
      double horas_trabalhadas)
      : super(matricula, nome, sobrenome, salario, horas_trabalhadas);
  @override
  double hrExtras({double? porcent}) {
    // TODO: implement hrExtras
    return super.hrExtras(porcent: 0.2);
  }
}

class Caixa extends Funcinarios {
  Caixa(int matricula, String nome, String sobrenome, double salario,
      double horas_trabalhadas)
      : super(matricula, nome, sobrenome, salario, horas_trabalhadas);
  @override
  double hrExtras({double? porcent}) {
    // TODO: implement hrExtras
    return super.hrExtras(porcent: 0.1);
  }
}

class Gerente extends Funcinarios {
  Gerente(int matricula, String nome, String sobrenome, double salario,
      double horas_trabalhadas)
      : super(matricula, nome, sobrenome, salario, horas_trabalhadas);
  @override
  double hrExtras({double? porcent}) {
    // TODO: implement hrExtras
    return super.hrExtras(porcent: 0.35);
  }
}

// No método main, crie um objeto para cada classe filha, preenchendo os dados.
void main() {
  Caixa caixa = Caixa(1579, 'Ana', 'Oliveira', 1212, 230);
  Vendedor vendedor = Vendedor(1601, 'João', 'Silva', 1212, 230);
  Gerente gerente = Gerente(1603, 'Maria', 'Souza', 1212, 230);
  print('Matrícula: ${caixa.matricula}');
  print('Nome: ${caixa.nome} ${caixa.sobrenome}');
  print('horas trabalhadas: ${caixa.horas_trabalhadas}');
  print('Salário: ${caixa.hrExtras()}\n');

  print('Matrícula: ${vendedor.matricula}');
  print('Nome: ${vendedor.nome} ${vendedor.sobrenome}');
  print('horas trabalhadas: ${vendedor.horas_trabalhadas}');
  print('Salário: ${vendedor.hrExtras()}\n');

  print('Matrícula: ${gerente.matricula}');
  print('Nome: ${gerente.nome} ${gerente.sobrenome}');
  print('horas trabalhadas: ${gerente.horas_trabalhadas}');
  print('Salário: ${gerente.hrExtras()}\n');
}

// Mostre o resultado dos cálculos na tela.
