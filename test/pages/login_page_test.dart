import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_login/app/pages/login_page.dart';

void main() {
  testWidgets("Should find a single widget per view on screen rendering",
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));

    final appBarTitle = find.text('Login');
    expect(appBarTitle, findsOneWidget);
  });
}
