import 'package:flutter_test_app/features/counter/domain/repositories/counter_repository.dart';


class CounterRepositoryImpl implements CounterRepository {

  @override
  int increment(int value) {
     
    return value+1;
  }

  @override
  int decrement(int value) {
     
    return value-1;
  }
}