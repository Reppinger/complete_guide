// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:complete_guide/main.dart';

void main() {
  testWidgets('Clicking answer changes question text',
      (WidgetTester tester) async {
    final answer1TestKey = Key('Answer1');
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('What is your favorite color?'), findsOneWidget);
    expect(find.text('What\'s your favorite animal?'), findsNothing);

    // Tap the 'Answer 1' button and change the question.
    await tester.tap(find.byKey(answer1TestKey));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('What is your favorite color?'), findsNothing);
    expect(find.text('What\'s your favorite animal?'), findsOneWidget);
  });
}
