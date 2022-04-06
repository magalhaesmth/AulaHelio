import 'dart:io';

void minha_funcao() {
  //tipo nome = atribuicao

  String nomeProduto = "Chocolate";
  double precoProduto = 10;
  int quantidadeProduto = 1;
  //definindo variaveis

  String entradaPreco = "3.5";
  double preco = double.parse(entradaPreco);
  //convertendo string para double

  String entradaQuantidade = '5';
  int quantidade = int.parse(entradaQuantidade);
  //convertendo string para int

  String? descricao;
  //criando variavel sem valor

  var nomeProduto2 = "Chocolate"; //definindo uma variavel string
  var quantidae2 = 23;
  var preco2 = 34.5;
  //definindo uma variavel dinamica

  print('Informe o seu nome');
  var nome = stdin.readLineSync();

  print('''O meu nome é $nome''');
}
