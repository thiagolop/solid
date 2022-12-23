//  LSP - Os subtipos devem ser substituíveis por seus tipos de base

// ignore_for_file: avoid_print

abstract class Conta {
  void depositar(double valor) => print('Depositar $valor');
  void sacar(double valor) => print('Sacar $valor');
  void transferir(double valor) => print('Transferir $valor');
}

class ContaCorrente implements Conta {
  @override
  void depositar(double valor) {}

  @override
  void sacar(double valor) {}

  @override
  void transferir(double valor) {}
}

class ContaPoupanca implements Conta {
  @override
  void depositar(double valor) {}

  @override
  void sacar(double valor) {}

  @override
  void transferir(double valor) => throw Exception('Não é possível transferir');
}

// Solução: no ISP. A classe ContaPoupanca não deve implementar o método transferir, pois não é possível transferir de uma conta poupança.