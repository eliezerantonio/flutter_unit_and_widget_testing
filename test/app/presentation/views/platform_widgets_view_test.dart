import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/views/platform_widgets_view.dart';

void main() {
  testWidgets('PlatformWidgtetsView', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: PlatformWidgetsView(),
      ),
    );
    expect(
      find.text("Android"),
      findsOneWidget,
    );
  });

  testWidgets('PlatformWidgtetsView - IOS', (tester) async {
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    await tester.pumpWidget(
      const MaterialApp(
        home: PlatformWidgetsView(),
      ),
    );
    expect(
      find.text("iOS"),
      findsOneWidget,
    );

    debugDefaultTargetPlatformOverride = null;
  });
}
