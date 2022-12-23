// ISP - Muitas interfaces específicas são melhores do que uma interface única.

abstract class Conta {
  void depositar(double valor);
  void sacar(double valor);
  void transferir(double valor);
  void realizarEmprestimo();
}

class ContaCorrente extends Conta {
  @override
  void depositar(double valor) {}

  @override
  void sacar(double valor) {}

  @override
  void transferir(double valor) {}

  @override
  void realizarEmprestimo() {}
}

class ContaPoupanca extends Conta {
  @override
  void depositar(double valor) {}

  @override
  void sacar(double valor) {}

  @override
  void transferir(double valor) => throw Exception('Não é possível transferir');

  @override
  void realizarEmprestimo() => throw Exception('Não é possível realizar empréstimo');
}

// O Problema do ISP é que, se você tem uma classe que implementa uma interface, você precisa implementar todos os métodos da interface, mesmo que não precise deles.

// Solução: Criar uma interface para cada responsabilidade.


abstract class Conta2 {
  void depositar(double valor);
}

abstract class CestaDeServicos {
  void realizarEmprestimo(double valor);
  void transferir(double valor);
}
  
class ContaCorrente2 extends Conta2 implements CestaDeServicos {
  @override
  void depositar(double valor) {}

  @override
  void realizarEmprestimo(double valor) {}

  @override
  void transferir(double valor) {}
}

class ContaPoupanca2 extends Conta2  {
  @override
  void depositar(double valor) {}
}

// Dessa forma, sera implemtada somente as funcionalidades que são nesecarias para a classe.