/*
Faça	 um	 programa	 para	 controle	 de	 empréstimo	 de	 livros,	 com	 as	 classes Emprestimo,	
Livro e	Pessoa.
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
  DateTime? dataDevolucao;

  Emprestimo(this.pessoa, this.livro, this.dataEmprestimo);

  void devolverLivro() {
    dataDevolucao = DateTime.now();
    livro.disponivel = true;
  }
}

void main() {
  Livro livro1 = Livro("O Senhor dos Anéis", "J.R.R. Tolkien", true);
  Livro livro2 =
      Livro("Harry Potter e a Pedra Filosofal", "J.K. Rowling", true);
  Livro livro3 = Livro("Dom Quixote", "Miguel de Cervantes", true);

  Pessoa pessoa1 = Pessoa("João");
  Pessoa pessoa2 = Pessoa("Maria");

  Emprestimo emprestimo1 = Emprestimo(pessoa1, livro1, DateTime(2023, 7, 19));
  livro1.disponivel = false;
  pessoa1.adicionarEmprestimo(emprestimo1);

  Emprestimo emprestimo2 = Emprestimo(pessoa2, livro2, DateTime(2023, 7, 18));
  livro2.disponivel = false;
  pessoa2.adicionarEmprestimo(emprestimo2);

  pessoa1.imprimirEmprestimos();
  pessoa2.imprimirEmprestimos();

  emprestimo1.devolverLivro();
  emprestimo2.devolverLivro();

  pessoa1.imprimirEmprestimos();
  pessoa2.imprimirEmprestimos();
}
