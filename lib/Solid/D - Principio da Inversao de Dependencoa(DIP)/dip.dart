// DIP - Depender de abstrações e não de classes concretas

// ignore_for_file: avoid_print

abstract class PagamentoRepository {
  void save() => print('Salvando pagamento');
}

class PagamentoRepositoryImpl implements PagamentoRepository {
  @override
  void save() => print('Salvando pagamento');
}
class PagamentoRepositoryMock implements PagamentoRepository {
  @override
  void save() => print('Salvando pagamento mock');
}
class ContaCorrente2{
  final PagamentoRepository _repository;
  ContaCorrente2(this._repository);
  
  void executarPagamento(){
    _repository.save();
  }
}