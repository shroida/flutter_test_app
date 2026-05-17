import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_test_app/features/counter/data/repositories/counter_repository_impl.dart';
import 'package:flutter_test_app/features/counter/domain/usecases/increment_usecase.dart';

void main() {

  late IncrementUseCase incrementUseCase;

  setUp(() {
    incrementUseCase = IncrementUseCase(
      CounterRepositoryImpl(),
    );
  });

  test(
    'should increment counter value by 1',
    () {

      final result = incrementUseCase(0);

      expect(result, 1);
    },
  );

  test(
    'should increment negative number',
    () {

      final result = incrementUseCase(-1);

      expect(result, 0);
    },
  );
}