import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_test_app/features/counter/data/repositories/counter_repository_impl.dart';
import 'package:flutter_test_app/features/counter/domain/usecases/decrement_usecase.dart';

void main() {

  late DecrementUseCase decrementUseCase;

  setUp(() {
    decrementUseCase = DecrementUseCase(
      CounterRepositoryImpl(),
    );
  });

  test(
    'should decrement counter value by 1',
    () {

      final result = decrementUseCase(1);

      expect(result, 0);
    },
  );

  test(
    'should decrement negative number',
    () {

      final result = decrementUseCase(0);

      expect(result, -1);
    },
  );
}