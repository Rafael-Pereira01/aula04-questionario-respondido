/*
Criar uma estrutura hierárquica que contenha as seguintes classes: Veiculo (classe abstrata), Bicicleta e Automóvel.
*/

abstract class Veiculo {
  void acelerar();
  void frear();
}

class Bicicleta extends Veiculo {
  @override
  void acelerar() {
    print('A bicicleta está acelerando.');
  }

  @override
  void frear() {
    print('A bicicleta está freando.');
  }
}

class Automovel extends Veiculo {
  void acelerar() {
    print('O automóvel está acelerando.');
  }

  void frear() {
    print('O automóvel está freando.');
  }
}

void main() {
  Bicicleta bicicleta = Bicicleta();
  Automovel automovel = Automovel();

  bicicleta.acelerar();
  bicicleta.frear();

  automovel.acelerar();
  automovel.frear();
}
