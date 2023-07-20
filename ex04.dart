/*
Crie um programa para uma Locadora de jogos, que deverá conter a classe Jogo(Gênero e nome) e dizer se foi alugado ou não.
*/

class Jogo {
  String genero;
  String nome;
  bool alugado;

  Jogo(this.genero, this.nome, this.alugado);

  void alugar() {
    if (alugado) {
      print('Este jogo já está alugado.');
    } else {
      alugado = true;
      print('O jogo ${nome} foi alugado com sucesso!');
    }
  }

  void devolver() {
    if (alugado) {
      alugado = false;
      print('O jogo ${nome} foi devolvido com sucesso!');
    } else {
      print('Este jogo não está alugado.');
    }
  }
}

void main() {
  Jogo jogo1 = Jogo('Ação', 'Call of Duty: Modern Warfare', false);
  Jogo jogo2 =
      Jogo('Aventura', 'The Legend of Zelda: Breath of the Wild', true);

  jogo1.alugar(); 
  jogo1.alugar(); 
  jogo1.devolver(); 

  jogo2.devolver(); 
  jogo2.alugar(); 
}
