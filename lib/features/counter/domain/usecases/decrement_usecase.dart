import '../repositories/counter_repository.dart';

class DecrementUseCase {

  final CounterRepository repository;

  DecrementUseCase(this.repository);

  int call(int value) {
    if (value < -1000000) throw Exception();
    return repository.decrement(value);
  }
}