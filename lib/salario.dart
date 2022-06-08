import 'dart:io';

void main(List<String> arguments) {
  int opcao;
  double salarioBruto;
  double vale;
  print('''
    Calculadora de Salario! 
    Escolha uma opção:
    1 - Calcular salario com desconto do INSS
    2 - Calcular salario com desconto do IR
    3 - Calcular salario com desconto de vale 
    4 - Calcular salario liquido com descontos totais
''');
  String? resposta;
  do {
    print('A opção não pode ser nula!');
    resposta = stdin.readLineSync();
  } while (resposta == null);
  opcao = int.parse(resposta);

  print('Informe o valor do seu salario bruto');
  resposta = null;
  do {
    print('O valor não pode ser nulo!');
    resposta = stdin.readLineSync();
  } while (resposta == null);
  salarioBruto = double.parse(resposta);

  print('Informe o valor pego de vale');
  resposta = stdin.readLineSync();
  do {
    print('O valor não pode ser nulo');
    resposta = stdin.readLineSync();
  } while (resposta == null);
  vale = double.parse(resposta);

  double calcularInss(double salarioBruto) {
    if (salarioBruto <= 0)
      throw Exception('O salario não pode ser 0 ou menor do que 0.');
    if (salarioBruto <= 1.212) {
      var calculoInssUm = (salarioBruto * 0.075);
      return calculoInssUm;
    } else if (salarioBruto > 1.212 || salarioBruto <= 2.427) {
      var calculoInssDois = (salarioBruto * 0.09);
      return calculoInssDois;
    } else if (salarioBruto > 2.427 || salarioBruto <= 3.641) {
      var calculoInssTres = (salarioBruto * 0.12);
      return calculoInssTres;
    } else
      (salarioBruto > 3.641 || salarioBruto <= 7.087);
    var calculoInssQuatro = (salarioBruto * 0.14);
    return calculoInssQuatro;
  }

  double calcularIR(double salarioBruto) {
    if (salarioBruto <= 0)
      throw Exception('O salario não pode ser 0 ou menor do que 0.');
    if (salarioBruto > 1.904 || salarioBruto <= 2.826) {
      var calculoIrUm = (salarioBruto * 0.075);
      return calculoIrUm;
    } else if (salarioBruto > 2.826 || salarioBruto <= 3.751) {
      var calculoIrDois = (salarioBruto * 0.15);
      return calculoIrDois;
    } else if (salarioBruto > 3.751 || salarioBruto <= 4.664) {
      var calculoIrTres = (salarioBruto * 0.225);
      return calculoIrTres;
    } else
      (salarioBruto > 4.664);
    var calculoIrQuatro = (salarioBruto * 0.275);
    return calculoIrQuatro;
  }

  double calcularVale(double salarioBruto, double vale) {
    if (salarioBruto <= 0 || vale < 0)
      throw Exception(
          'O salario não pode ser 0 ou menor do que 0; O vale não pode ser menor que zero.');
    var descontoVale = (salarioBruto - vale);
    return descontoVale;
  }
}
