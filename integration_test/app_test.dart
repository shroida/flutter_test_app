import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter/material.dart';

import 'package:flutter_test_app/main.dart';
import 'package:flutter_test_app/features/counter/data/repositories/counter_repository_impl.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('full counter flow test', (tester) async {

    // 🔥 Start app
    await tester.pumpWidget(
      MyApp(repository: CounterRepositoryImpl()),
    );

    await tester.pumpAndSettle();

    // 🟢 initial state
    expect(find.text('0'), findsOneWidget);

    // ➕ increment
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    expect(find.text('1'), findsOneWidget);

    // ➕ increment again
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    expect(find.text('2'), findsOneWidget);

    // ➖ decrement
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pumpAndSettle();

    expect(find.text('1'), findsOneWidget);
  });
}