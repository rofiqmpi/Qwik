import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qwik/main.dart';

void main() {
  testWidgets('Home screen loads correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const QwikApp());
    expect(find.text('Messages'), findsOneWidget);
    expect(find.text("Once you start a new conversation,\nyou'll see it listed here"), findsOneWidget);
    expect(find.text('Start chat'), findsOneWidget);
  });
}
