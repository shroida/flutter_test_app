import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_app/features/counter/data/repositories/counter_repository_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:flutter_test_app/features/counter/domain/repositories/counter_repository.dart';
import 'package:flutter_test_app/features/counter/domain/usecases/decrement_usecase.dart';

import 'decrement_usecase_test.mocks.dart';

@GenerateMocks([CounterRepository])
void main() {
  late MockCounterRepository mockRepository;
  late DecrementUseCase useCase;

  setUp(() {
    mockRepository = MockCounterRepository();
    useCase = DecrementUseCase(mockRepository);
  });

  test('should return -1 when repository decrement succeeds', () {
    // Arrange
    when(mockRepository.decrement(any)).thenReturn(-1);

    // Act
    final result = useCase(0);

    // Assert
    expect(result, -1);
  });
  test('should throw exception for invalid input', () {
  final repo = CounterRepositoryImpl();
  final useCase = DecrementUseCase(repo);

  expect(() => useCase(-999999999), throwsException);
});
}