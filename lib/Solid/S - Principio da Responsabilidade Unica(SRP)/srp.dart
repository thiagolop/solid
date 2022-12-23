// Uma classe deve ter um, e somente um, motivo para mudar.
// Sua responsabilidade é sempre em cima de um e apenas autor.

// ignore_for_file: avoid_print

class ContaCorrente {
  validarContaExistente() {
    // Valida se a conta existe
  }
  salvarModificacoes() {
    // Salva as modificações
  }
}

// Solução: Criar uma classe para cada responsabilidade
// Sua funcionalidade não importa a grandeza, o que importa é a responsabilidade, não deve-se fazer o que não foi proposto.

class ContaCorrenteRepository {
  void save() => print('Salvando conta corrente');
}

class ContaCorrente2 {
  final ContaCorrenteRepository _repository = ContaCorrenteRepository();

  void save() {
    _repository.save();
  }
}
