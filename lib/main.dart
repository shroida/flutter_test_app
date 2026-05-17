import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/counter/data/repositories/counter_repository_impl.dart';
import 'features/counter/domain/usecases/decrement_usecase.dart';
import 'features/counter/domain/usecases/increment_usecase.dart';
import 'features/counter/presentation/cubit/counter_cubit.dart';
import 'features/counter/presentation/pages/counter_page.dart';

void main() {

  final repository = CounterRepositoryImpl();

  runApp(MyApp(repository: repository));
}

class MyApp extends StatelessWidget {

  final CounterRepositoryImpl repository;

  const MyApp({
    super.key,
    required this.repository,
  });

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: BlocProvider(
        create: (_) => CounterCubit(
          incrementUseCase: IncrementUseCase(repository),
          decrementUseCase: DecrementUseCase(repository),
        ),
        child: const CounterPage(),
      ),
    );
  }
}