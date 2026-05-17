import '../repositories/counter_repository.dart';

class DecrementUseCase {

  final CounterRepository repository;

  DecrementUseCase(this.repository);

  int call(int value) {
    return repository.decrement(value);
  }
}