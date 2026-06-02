import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qwik/main.dart';

void main() {
  testWidgets('App renders without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(const QwikApp());
    await tester.pump();
    // App should render a Scaffold
    expect(find.byType(Scaffold), findsOneWidget);
    // FAB "Start chat" text should be visible (it is a plain Text inside FAB)
    expect(find.text('Start chat'), findsOneWidget);
  });
}
