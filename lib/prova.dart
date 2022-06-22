void calculoEntregas() {}

//Essa função retorna o valor de gasolina por km, por exemplo, se minha moto faz 38Km/l e eu pago R$6,75 no litro da gasolina, gasto entorno de R$0,17 por KM.
double gastoGasolinaPorKm(
    {required double valorGasolina, required double mediaMoto}) {
  if (valorGasolina <= 0 || mediaMoto <= 0)
    throw Exception("Valor informado incorretamente");
  var resultadoGasto = (valorGasolina / mediaMoto);
  return resultadoGasto;
}

//Essa função retorna um valor bruto de quanto você ganho no dia trabalhando de entregador.
double lucroBrutoEntregas(
    {required double valorEntrega, required double quantidadeEntrega}) {
  if (valorEntrega <= 0 || quantidadeEntrega <= 0)
    throw Exception("Valor informado incorretamente");
  var lucroBruto = (quantidadeEntrega * valorEntrega);
  return lucroBruto;
}

//Essa função é igual a anterior, porém retorna um valor bruto de quanto você ganhou sendo entregador no mês, trabalhando 27 dias no mês.
double lucroBrutoEntregas(
    {required double valorEntrega, required double quantidadeEntrega}) {
  if (valorEntrega <= 0 || quantidadeEntrega <= 0)
    throw Exception("Valor informado incorretamente");
  var lucroBrutoMes = (quantidadeEntrega * valorEntrega) * 27;
  return lucroBrutoMes;
}

//Essa função retorna uma comparação com o salario minimo, visto que ganhando o minimo voce esta registrado bonitinho, como entregador não, está no risco. Ai fala se compensou ou não.
double comparacaoSalarioMinimo(
    {required double valorEntrega, required double quantidadeEntrega}) {
  var lucroBruto = (quantidadeEntrega * valorEntrega) * 27;
  if (valorEntrega <= 0 || quantidadeEntrega <= 0) {
    throw Exception("Valor informado incorretamente");
} else if (lucroBruto <= 1212)
  return "Não compensou ser entregador este mês" ;
  else {
  return "Compensou este mes, tirou mais que o minimo.";
  }
