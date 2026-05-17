import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_app/features/counter/data/repositories/counter_repository_impl.dart';

void main() {
  late CounterRepositoryImpl repository;

  setUp(() {
    repository = CounterRepositoryImpl();
  });

  test('should increment value correctly', () {
    final result = repository.increment(2);

    expect(result, 2);
  });

  test('should accumulate increments', () {
    repository.increment(2);
    final result = repository.increment(3);

    expect(result, 5);
  });

  test('should decrement value correctly', () {
    final result = repository.decrement(2);

    expect(result, -2);
  });

  test('should accumulate decrements', () {
    repository.decrement(2);
    final result = repository.decrement(3);

    expect(result, -5);
  });
  test('should handle 100 increment', () {
    final result = repository.increment(100);

    expect(result, 100);
  });
  test('should handle 100 decrement', () {
    final result = repository.decrement(100);

    expect(result, -100);
  });
}