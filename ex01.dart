/*
Escreva uma classe cujos objetos representam alunos matriculados em uma disciplina. Cada objeto
dessa classe deve guardar os seguintes dados do aluno: matrícula, nome, 2 notas de prova e 1 nota de
trabalho. Escreva os seguintes métodos para esta classe:
  media calcula a média final do aluno (cada prova tem peso 2,5 e o trabalho tem peso 2)
  final calcula quanto o aluno precisa para a prova final (retorna zero se ele não for para a final)
*/

class Livro {
  String titulo;
  String autor;
  bool disponivel;

  Livro(this.titulo, this.autor, this.disponivel);
}

class Pessoa {
  String nome;
  List<Emprestimo> emprestimos = [];

  Pessoa(this.nome);

  void adicionarEmprestimo(Emprestimo emprestimo) {
    emprestimos.add(emprestimo);
  }

  void imprimirEmprestimos() {
    print("Empréstimos de $nome:");
    for (var emprestimo in emprestimos) {
      print(
          "- Livro: ${emprestimo.livro.titulo}, Data de Empréstimo: ${emprestimo.dataEmprestimo}");
    }
  }
}

class Emprestimo {
  Pessoa pessoa;
  Livro livro;
  DateTime dataEmprestimo;

  Emprestimo(this.pessoa, this.livro, this.dataEmprestimo);
}

void main() {
  Livro livro1 = Livro("O Senhor dos Anéis", "J.R.R. Tolkien", true);
  Livro livro2 =
      Livro("Harry Potter e a Pedra Filosofal", "J.K. Rowling", true);
  Livro livro3 = Livro("Dom Quixote", "Miguel de Cervantes", false);

  Pessoa pessoa1 = Pessoa("João");
  Pessoa pessoa2 = Pessoa("Maria");

  Emprestimo emprestimo1 = Emprestimo(pessoa1, livro1, DateTime.now());
  livro1.disponivel = false;
  pessoa1.adicionarEmprestimo(emprestimo1);

  Emprestimo emprestimo2 = Emprestimo(pessoa2, livro2, DateTime.now());
  livro2.disponivel = false;
  pessoa2.adicionarEmprestimo(emprestimo2);

  Emprestimo emprestimo3 = Emprestimo(pessoa1, livro3, DateTime.now());
  if (livro3.disponivel) {
    pessoa1.adicionarEmprestimo(emprestimo3);
    livro3.disponivel = false;
  } else {
    print("O livro ${livro3.titulo} não está disponível para empréstimo.");
  }

  pessoa1.imprimirEmprestimos();
  pessoa2.imprimirEmprestimos();
}
