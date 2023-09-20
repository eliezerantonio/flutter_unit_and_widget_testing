import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/app/my_app.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/routes/routes.dart';

void main() {
  testWidgets('PlatformWidgtetsView', (tester) async {
    await _initView(tester);
    expect(
      find.text("Android"),
      findsOneWidget,
    );
  });

  testWidgets('PlatformWidgtetsView - IOS', (tester) async {
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    await _initView(tester);
    expect(
      find.text("iOS"),
      findsOneWidget,
    );

    debugDefaultTargetPlatformOverride = null;
  });
}

Future<void> _initView(WidgetTester tester) async {
  return tester.pumpWidget(
    const MyApp(
      initialRoute: Routes.PLATFORM_WIDGETS,
    ),
  );
}
