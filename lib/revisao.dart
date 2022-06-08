import 'dart:io';

void main(List<String> arguments) {
  int opcao; //Variaveis
  double nota1;
  double nota2;
  print('''
    Escolha uma das opções:
    1 - Definição da nota pela média;
    2 - Definição da nota pela maior nota;
    3 - Definição da nota pela meno nota.  
  '''); //Navegacao do usuario
  String? //A partir da 1.12 toda variavel não pode ser nula, por isso o "?"
      resposta;
  do {
    print('A entrada não pode ser nula');
    resposta = stdin.readLineSync();
  } while (resposta == null);
  opcao = int.parse(resposta); //Entrada vira um numero inteiro

  print('Informe a primeira nota:');
  resposta = null;
  do {
    print('A entrada não pode ser nula');
    resposta = stdin.readLineSync();
  } while (resposta == null);
  nota1 = double.parse(resposta);

  print('Informe a segunda nota:');
  resposta = null;
  do {
    print('A entrada não pode ser nula');
    resposta = stdin.readLineSync();
  } while (resposta == null);
  nota2 = double.parse(resposta);
  if (opcao == 1) verificarAprovacao(nota1, nota2, calcularMedia);
  if (opcao == 2) verificarAprovacao(nota1, nota2, calcularMaiorNota);
  if (opcao == 3) verificarAprovacao(nota1, nota2, calcularMenorNota);
  if (opcao == 4)
    verificarAprovacao(
        nota1, nota2, (nota1, nota2) => ((nota1 * 2) + nota2) / 3);
}

String verificarAprovacao(double nota1, double nota2, Function definirMedia) {
  //Verifica as opcoes;  () = Sem retorno e sem parametro
  double media = definirMedia(nota1, nota2);
  if (media >= 6) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}

double calcularMedia(double nota1, double nota2) {
  //Aqui estamos dividindo a legibilidade, para nao ficar tao extenso e grande o codigo
  if (nota1 < 0 || nota2 < 0) throw Exception('A nota não pode ser negativa!');
  if (nota1 > 10 || nota2 > 10)
    throw Exception('A nota não pode ser maior que 10!');
  var mediaNota = (nota1 + nota2) / 2;
  return mediaNota;
}

double calcularMaiorNota(double nota1, double nota2) {
  if (nota1 < 0 || nota2 < 0) throw Exception('A nota não pode ser negativa!');
  if (nota1 > 10 || nota2 > 10)
    throw Exception('A nota não pode ser maior que 10!');
  var maiorNota = nota1;
  if (nota2 > nota1) {
    maiorNota = nota2;
  }
  return maiorNota;
}

double calcularMenorNota(double nota1, double nota2) {
  if (nota1 < 0 || nota2 < 0) throw Exception('A nota não pode ser negativa!');
  if (nota1 > 10 || nota2 > 10)
    throw Exception('A nota não pode ser maior que 10!');
  var menorNota = nota1;
  if (nota2 < nota1) {
    menorNota = nota2;
  }
  return menorNota;
}
/*
Legibilidade → Os nomes estão claros e compreensíveis? por ex: verificar; verificar oq? Tem que ser verificarAprovacao ou outro. OK

Acoplamento → Esta função roda em qualquer plataforma? Usando o "Print" e o "readline" fica engessado, nao da pra usar no web e tal, somente no terminal.
Tem que colocar do argumento. Linha 7 - OK

Coesão, unidade lógica, modularização → Esta função tem qual objetivo? 
	Para realizar o objetivo, realiza quantas tarefas?
	Estas tarefas podem ser reaproveitadas? 
	Quais são as tarefas/funções?
	→ distância do código em relação ao começo da linha => Linha 39 até 73. Dar aquela resumida no codigo, assim dizendo.

Parameter Function → e se tiver outras formas de definir nota? => Por exemplo na 

Anonymous Function → funções sem nome; => Não tem nome nem retorno, quando não queremos usar novamente, retornar aquele parametro.
Arrow Function => Funcao anonima que so tem uma linha, mais resumida ainda; Por exemplo linha 40, 41.

Tratamento de erros => Por exemplo a linha 77 e 78. Trata o erro

Função é uma ação.
Parametro de string ou int tal são dados.

Prova vai ser 1 fazer igual o projeto
Segunda questao parecida com aquela do IMC
E a terceira um codigo igual pegamos esse, tudo torto e dar um tapa

Funcao que calcular salario, com desconto de INSS e IR e desconto de vale - Juros ou multa conforme o valor.

*/	
