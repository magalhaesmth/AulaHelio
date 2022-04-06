import 'dart:io';

void minha_escola() {
  print("Informe o seu R.A de aluno");
  var ra = stdin.readLineSync();

  print("Informe seu nome");
  var nome = stdin.readLineSync();

  print("Informe seu ano de nascimento");
  var nascimento = stdin.readLineSync();
  int nascimentoInt = int.parse(nascimento);

  print("Informe sua serie");
  var serie = stdin.readLineSync();
  int serieInt = int.parse(serie);

  var idadeAtual = nascimentoInt - serieInt;

  print(
      "O r.a deste aluno é $ra, seu nome é $nome, seu ano de nascimento é $nascimento e sua serie é $serie");
}
