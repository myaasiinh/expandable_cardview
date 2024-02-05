// ignore_for_file: avoid_print, prefer_const_literals_to_create_immutables

import 'package:expandable_cardview/expandable_cardview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('ExpandableCard UI Test', (WidgetTester tester) async {
    // Build the ExpandableCard widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ExpandableCard(
            title: 'Test Title',
            description: 'Test Description',
            button1Value: 'Button 1',
            button2Value: 'Button 2',
            onPressedButton2: () {
              // Add onPressedButton2 behavior here
              print('Button 2 pressed');
            },
            sectionRowCount: 2,
            sectionRowTitles: ['Section 1', 'Section 2'],
            sectionRowData: {
              'Section 1': ['Data 1', 'Data 2'],
              'Section 2': ['Data 3', 'Data 4'],
            },
          ),
        ),
      ),
    );

    // Verify that the card is initially collapsed
    expect(find.text('Details'), findsOneWidget);
    expect(find.text('Close'), findsNothing);

    // Tap the expand button
    await tester.tap(find.text('Details'));
    await tester.pump();

    // Verify that the card is expanded
    expect(find.text('Close'), findsOneWidget);
    expect(find.text('Details'), findsNothing);

    // Tap the close button
    await tester.tap(find.text('Close'));
    await tester.pump();

    // Verify that the card is collapsed again
    expect(find.text('Details'), findsOneWidget);
    expect(find.text('Close'), findsNothing);

    // Tap the second button
    await tester.tap(find.text('Button 2'));
    await tester.pump();

    // Verify that onPressedButton2 is called
    // You can add further assertions based on the expected behavior
  });
}
