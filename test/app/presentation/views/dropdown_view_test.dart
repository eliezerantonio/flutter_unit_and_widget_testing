import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/app/my_app.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/routes/routes.dart';

void main() {
  testWidgets("Dropdown", (tester) async {
    await tester.pumpWidget(const MyApp(initialRoute: Routes.DROPDOWN));

    expect(find.text("select one option"), findsOneWidget);
    await tester.tap(find.byType(DropdownButton<String>));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key("item-no")), findsOneWidget);
    expect(find.byKey(const Key("item-yes")), findsOneWidget);

    await tester.tap(find.text("no"));
    expect(find.text("no"), findsOneWidget);
  });
}
