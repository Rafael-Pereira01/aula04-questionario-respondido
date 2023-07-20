/*
Faça	 uma	 programa	 para	 representar	a	árvore	genealógica	 de	 uma	 família.	 Para	 tal,	 crie	
uma	classe	Pessoa	que	permita	indicar,	além	de	nome	e	idade,	o	pai	e	a	mãe.	Tenha	em	
mente	que	pai	e	mãe	também	são	do	tipo	Pessoa.
*/

class Pessoa {
  String nome;
  int idade;
  Pessoa? pai;
  Pessoa? mae;

  Pessoa(this.nome, this.idade, {this.pai, this.mae});

  void adicionarFilho(Pessoa filho) {
    if (this.sexo == "Masculino") {
      filho.pai = this;
    } else if (this.sexo == "Feminino") {
      filho.mae = this;
    }
  }

  String get sexo {
    if (this is Homem) {
      return "Masculino";
    } else if (this is Mulher) {
      return "Feminino";
    } else {
      return "Desconhecido";
    }
  }

  String obterFamilia() {
    String infoPai = pai != null ? ", Pai: ${pai!.nome}" : "";
    String infoMae = mae != null ? ", Mãe: ${mae!.nome}" : "";
    return "Nome: $nome, Idade: $idade$infoPai$infoMae";
  }
}

class Homem extends Pessoa {
  Homem(String nome, int idade) : super(nome, idade);
}

class Mulher extends Pessoa {
  Mulher(String nome, int idade) : super(nome, idade);
}

void main() {
  // Criando a árvore genealógica da família
  var avoPaterno = Homem("João", 80);
  var avoMaterno = Mulher("Maria", 75);

  var pai = Homem("Pedro", 50);
  var mae = Mulher("Ana", 45);

  var filho = Homem("José", 25);
  var filha = Mulher("Laura", 20);

  // Montando a árvore genealógica
  avoPaterno.adicionarFilho(pai);
  avoMaterno.adicionarFilho(mae);
  pai.adicionarFilho(filho);
  mae.adicionarFilho(filha);

  // Imprimindo a árvore genealógica
  print("Árvore Genealógica:");
  print(avoPaterno.obterFamilia());
  print(avoMaterno.obterFamilia());
  print(pai.obterFamilia());
  print(mae.obterFamilia());
  print(filho.obterFamilia());
  print(filha.obterFamilia());
}
