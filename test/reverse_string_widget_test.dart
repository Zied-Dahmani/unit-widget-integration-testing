import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_widget_integration_testing/main.dart';

void main(){
  testWidgets('Reverse a string widget test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    await tester.enterText(textField, 'Hello');
    expect(find.text('Hello'), findsOneWidget);
    var button = find.text("Reverse");
    expect(button,findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(find.text("olleH"),findsOneWidget);
  });
}