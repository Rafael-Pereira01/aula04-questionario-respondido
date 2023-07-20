/*
Escreva uma classe cujos objetos representam alunos matriculados em uma disciplina. Cada objeto
dessa classe deve guardar os seguintes dados do aluno: matrícula, nome, 2 notas de prova e 1 nota de
trabalho. Escreva os seguintes métodos para esta classe:
  media calcula a média final do aluno (cada prova tem peso 2,5 e o trabalho tem peso 2)
  final calcula quanto o aluno precisa para a prova final (retorna zero se ele não for para a final)
*/

class Aluno {
  int matricula;
  String nome;
  double notaProva1;
  double notaProva2;
  double notaTrabalho;

  Aluno(this.matricula, this.nome, this.notaProva1, this.notaProva2,
      this.notaTrabalho);

  double media() {
    double mediaProvas = (notaProva1 + notaProva2) * 2.5;
    double mediaTrabalho = notaTrabalho * 2.0;
    return (mediaProvas + mediaTrabalho) / 5.5;
  }

  double finalNecessaria() {
    double mediaAtual = media();
    if (mediaAtual >= 6.0) {
      return 0.0;
    } else {
      double notaNecessaria = (6.0 - mediaAtual) * 5.5 / 2.5;
      return notaNecessaria.clamp(0.0, 10.0);
    }
  }
}

void main() {
  Aluno aluno1 = Aluno(12345, "João", 7.5, 8.0, 9.0);
  Aluno aluno2 = Aluno(67890, "Maria", 6.0, 6.5, 7.0);

  print("Aluno 1:");
  print("Média final: ${aluno1.media()}");
  print("Nota necessária na prova final: ${aluno1.finalNecessaria()}");

  print("\nAluno 2:");
  print("Média final: ${aluno2.media()}");
  print("Nota necessária na prova final: ${aluno2.finalNecessaria()}");
}
