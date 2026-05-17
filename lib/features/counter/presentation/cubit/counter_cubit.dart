import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/decrement_usecase.dart';
import '../../domain/usecases/increment_usecase.dart';

class CounterCubit extends Cubit<int> {

  final IncrementUseCase incrementUseCase;
  final DecrementUseCase decrementUseCase;

  CounterCubit({
    required this.incrementUseCase,
    required this.decrementUseCase,
  }) : super(0);

  void increment() {
    emit(incrementUseCase(state));
  }

  void decrement() {
    emit(decrementUseCase(state));
  }
}