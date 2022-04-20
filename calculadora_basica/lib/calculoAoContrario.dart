import 'dart:math';
import 'dart:io';

void show() {
  int controlador = 0;
  print('''
  Escolha uma opção de tipo de cálculo.
    1 - Realizar operação inversa a escolhida
''');
  controlador = int.parse(stdin.readLineSync()!);
  if (controlador == 1) {}
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
