import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_app/features/counter/data/repositories/counter_repository_impl.dart';

void main() {
  late CounterRepositoryImpl repository;

  setUp(() {
    repository = CounterRepositoryImpl();
  });

  test('should increment value correctly', () {
    final result = repository.increment(2);

    expect(result, 3);
  });

  test('should increment multiple values independently', () {
    final first = repository.increment(2);
    final second = repository.increment(3);

    expect(first, 3);
    expect(second, 4);
  });

  test('should decrement value correctly', () {
    final result = repository.decrement(2);

    expect(result, 1);
  });

  test('should decrement multiple values independently', () {
    final first = repository.decrement(2);
    final second = repository.decrement(3);

    expect(first, 1);
    expect(second, 2);
  });

  test('should handle small positive numbers', () {
    final result = repository.increment(100);

    expect(result, 101);
  });

  test('should handle small negative result', () {
    final result = repository.decrement(100);

    expect(result, 99);
  });
}