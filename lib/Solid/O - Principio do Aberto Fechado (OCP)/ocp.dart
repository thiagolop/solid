// OCP nos diz que as classes devem ser abertas para extensão, mas fechadas para modificação.

// ignore_for_file: avoid_print

class Pagamento {
  void pagarBoleto() => print('Pagando Boleto');
  void pagarCartao() => print('Pagando Cartão');
}

// E Se eu quiser adicionar um novo método de pagamento?

// Solução: Devemos ser capazes de adicionar novos métodos de pagamento sem precisar modificar a classe Pagamento.

abstract class Pagamento2 {
  int valor = 100;
  void pagar();
}

// Na extensão da classe Pagamento2, não precisamos modificar a classe Pagamento2, apenas a extensão.

class Boleto extends Pagamento2 {
  @override
  void pagar() => print('Pagando Boleto');
}

class Cartao extends Pagamento2 {
  @override
  void pagar() => print('Pagando Cartão');
}

