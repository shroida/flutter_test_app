import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:flutter_test_app/features/counter/domain/repositories/counter_repository.dart';
import 'package:flutter_test_app/features/counter/domain/usecases/increment_usecase.dart';

import 'increment_usecase_test.mocks.dart';

@GenerateMocks([CounterRepository])
void main() {
  late MockCounterRepository mockRepository;
  late IncrementUseCase useCase;

  setUp(() {
    mockRepository = MockCounterRepository();
    useCase = IncrementUseCase(mockRepository);
  });

  test('should return 1 when repository increment succeeds', () async {
    // Arrange
    when(mockRepository.increment(any)).thenReturn(1);

    // Act
    final result = useCase(0);

    // Assert
    expect(result, 1);
  });
}