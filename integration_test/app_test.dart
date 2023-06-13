import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:unit_widget_integration_testing/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  //group('end-to-end test', () {
    testWidgets('Reverse a string', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      var textField = find.byType(TextField);
      var button = find.text('Reverse');

      await tester.enterText(textField, 'Hello');
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(button);
      await Future.delayed(const Duration(seconds: 2));

      await tester.pumpAndSettle();
      expect(find.text('olleH'), findsOneWidget);
    });
  //});
}
