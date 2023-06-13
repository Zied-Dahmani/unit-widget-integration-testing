import 'package:flutter_test/flutter_test.dart';
import 'package:unit_widget_integration_testing/home_screen.dart';

void main() {
  test('Reverse a string unit test', () {
    String initial = "Hello";
    String reversed = reverseString(initial);
    expect(reversed, 'olleH');
  });
}
