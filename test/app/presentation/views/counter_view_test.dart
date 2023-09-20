import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/app/my_app.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/routes/routes.dart';

void main() {
  testWidgets('CounterView', (tester) async {
    await _initView(tester);

    expect(find.text('0'), findsOneWidget);

    for (int i = 0; i < 5; i++) {
      await tester.tap(find.byKey(const Key('button')));

      await tester.pump();

      expect(find.text("${i + 1}"), findsOneWidget);
    }

    await tester.pumpAndSettle();
    expect(find.byKey(const Key('button')), findsNothing);
  });

  testWidgets(
    'CounterView nav',
    (tester) async {
      await _initView(tester);

      await tester.tap(find.byKey(const Key("icon-button")));
      await tester.pumpAndSettle();
      expect(find.text("data"), findsWidgets);
    },
  );
}

Future<void> _initView(WidgetTester tester) async {
  return tester.pumpWidget(
    const MyApp(
      initialRoute: Routes.COUNTER,
    ),
  );
}
