import 'dart:math';
import 'dart:io';

void show() {
  int controlador = 0;
  int operacao = 0;
  List<double> valores = [];
  print('''
  Escolha uma opção de tipo de cálculo.
    1 - Realizar operação inversa a escolhida
''');
  controlador = int.parse(stdin.readLineSync()!);
  if (controlador == 1) {
    operacao = definirTipoOperacao();
    
    if (operacao == 1) {
      valores = definirValores();
      somaAoContrario(valores[0], valores[1]);
    } else if (operacao == 2) {
      valores = definirValores();
      subtracaoAoContrario(valores[0], valores[1]);
    } else if (operacao == 3) {
      valores = definirValores();
      multiplicacaoAoContrario(valores[0], valores[1]);
    } else if (operacao == 4) {
      valores = definirValores();
      divisaoAoContrario(valores[0], valores[1]);
    } else if (operacao == 5) {
      //Terminar
      aoQuadradoAoContrario(valores[0]);
    }
  }
}

int definirTipoOperacao() {
  print('''
  Escolha a operação:
    1 - Adição.
    2 - Subtração.
    3 - Multiplicação.
    4 - Divisão.
    5 - Potencia quadrática.
    6 - Raiz quadrada.
  ''');

  return int.parse(stdin.readLineSync()!);
}

List<double> definirValores() {
  print("Digite o primeiro valor da operação: ");
  double valor1 = double.parse(stdin.readLineSync()!);
  print("Digite o segundo valor da operação: ");
  double valor2 = double.parse(stdin.readLineSync()!);
  List<double> valores = [];
  valores.add(valor1);
  valores.add(valor2);
  return valores;
}

double somaAoContrario(double valor1, double valor2) {
  return valor1 - valor2;
}

double subtracaoAoContrario(double valor1, double valor2) {
  return valor1 + valor2;
}

double multiplicacaoAoContrario(double valor1, double valor2) {
  return valor1 / valor2;
}

double divisaoAoContrario(double valor1, double valor2) {
  return valor1 * valor2;
}

double raizQuadradaAoContrario(double valor1) {
  return valor1 * valor1;
}

double aoQuadradoAoContrario(double valor1) {
  return sqrt(valor1);
}
