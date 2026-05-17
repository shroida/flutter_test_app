import '../repositories/counter_repository.dart';

class IncrementUseCase {

  final CounterRepository repository;

  IncrementUseCase(this.repository);

  int call(int value) {
    return repository.increment(value);
  }
}