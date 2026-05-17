import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:flutter_test_app/features/counter/domain/repositories/counter_repository.dart';

import 'counter_repository_test.mocks.dart';

@GenerateMocks([CounterRepository])
void main() {
  late MockCounterRepository mockRepository;

  setUp(() {
    mockRepository = MockCounterRepository();
  });

  test('should return 1 when increment is successful', () {
    // Arrange
    when(mockRepository.increment(any)).thenReturn(1);

    // Act
    final result = mockRepository.increment(2);

    // Assert
    expect(result, 1);
    verify(mockRepository.increment(2)).called(1);
  });
}