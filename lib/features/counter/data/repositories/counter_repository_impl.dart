import 'package:flutter_test_app/features/counter/domain/repositories/counter_repository.dart';


class CounterRepositoryImpl implements CounterRepository {
  int _value = 0;

  @override
  int increment(int value) {
    _value += value;
    return _value;
  }

  @override
  int decrement(int value) {
    _value -= value;
    return _value;
  }
}