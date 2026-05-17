import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:flutter_test_app/features/counter/domain/repositories/counter_repository.dart';
import 'package:flutter_test_app/features/counter/domain/usecases/decrement_usecase.dart';
import 'package:flutter_test_app/features/counter/domain/usecases/increment_usecase.dart';
import 'package:flutter_test_app/features/counter/presentation/cubit/counter_cubit.dart';

import 'counter_cubit_test.mocks.dart';

@GenerateMocks([CounterRepository])
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

    setUp: () {
      when(
        mockRepository.increment(any),
      ).thenReturn(1);
    },

    build: () => cubit,

    act: (cubit) => cubit.increment(),

    expect: () => [1],
  );

  blocTest<CounterCubit, int>(
    'should emit [-1] when decrement succeeds',

    setUp: () {
      when(
        mockRepository.decrement(any),
      ).thenReturn(-1);
    },

    build: () => cubit,

    act: (cubit) => cubit.decrement(),

    expect: () => [-1],
  );
}