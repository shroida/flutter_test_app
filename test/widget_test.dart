import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_app/features/counter/data/repositories/counter_repository_impl.dart';

import 'package:flutter_test_app/main.dart';

void main() {

  testWidgets(
    'counter increments test',
    (WidgetTester tester) async {

      await tester.pumpWidget(
        MyApp(
          repository: CounterRepositoryImpl(),
        ),
      );

      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.add));

      await tester.pump();

      expect(find.text('1'), findsOneWidget);
    },
  );
}