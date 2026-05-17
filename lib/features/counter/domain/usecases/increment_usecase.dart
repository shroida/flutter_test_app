import '../repositories/counter_repository.dart';

class IncrementUseCase {

  final CounterRepository repository;

  IncrementUseCase(this.repository);

  int call(int value) {
    if (value > 1000000) throw Exception();
    return repository.increment(value);
  }
}