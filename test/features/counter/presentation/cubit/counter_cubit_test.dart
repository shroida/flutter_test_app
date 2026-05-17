import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:flutter_test_app/features/counter/domain/repositories/counter_repository.dart';
import 'package:flutter_test_app/features/counter/domain/usecases/decrement_usecase.dart';
import 'package:flutter_test_app/features/counter/domain/usecases/increment_usecase.dart';
import 'package:flutter_test_app/features/counter/presentation/cubit/counter_cubit.dart';

class MockCounterRepository extends Mock
    implements CounterRepository {}

void main() {

  late MockCounterRepository mockRepository;

  late CounterCubit cubit;

  setUp(() {

    mockRepository = MockCounterRepository();

    cubit = CounterCubit(
      incrementUseCase: IncrementUseCase(mockRepository),
      decrementUseCase: DecrementUseCase(mockRepository),
    );
  });

  blocTest<CounterCubit, int>(
    'should emit [1] when increment succeeds',

    build: () {

      when(
        mockRepository.increment(0),
      ).thenReturn(1);

      return cubit;
    },

    act: (cubit) => cubit.increment(),

    expect: () => [1],
  );

  blocTest<CounterCubit, int>(
    'should emit [-1] when decrement succeeds',

    build: () {

      when(
        mockRepository.decrement(0),
      ).thenReturn(-1);

      return cubit;
    },

    act: (cubit) => cubit.decrement(),

    expect: () => [-1],
  );
}