import 'package:expandable_cardview/expandable_cardview.dart';
import 'package:expandable_cardview/src/component/section_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('ExpandableCard UI Test', (WidgetTester tester) async {
    // Build the test widget
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: ExpandableCard(
          title: 'Fried Rice',
          description: 'Confirmed Order',
          button2Value: 'Buy Now',
          sectionRowCount: 3,
          sectionRowTitles: const ['Review', 'Order', 'Shipping'],
          totalText: 3,
          backgroundColor: Colors.white,
          elevation: 4.0,
          button2Elevation: 5.0,
          button2Color: Colors.blue,
          button1TextColor: Colors.black,
          button2BorderRadius: 5.0,
          cardBorderRadius: 10,
          sectionRowData:  {
            'Review': ['Good portion size', 'Taste good', 'Overall good'],
            'Order': ['Fried Rice', '1', 'RM 10.00'],
            'Shipping': ['Street 1', 'City 1', '12345'],
          },
          
        ),
      ),
    )
  );

    // Expectations
    expect(find.text('Bebek Goreng'), findsOneWidget); // Expect title text
    expect(find.text('Bebek Goreng pedas dan gurih'),
        findsOneWidget); // Expect description text
    expect(find.text('Konfirmasi'), findsOneWidget); // Expect button 2 text
    expect(find.byType(Divider), findsNWidgets(3)); // Expect 3 dividers
    expect(find.byType(SectionRow), findsNWidgets(3)); // Expect 3 section rows
  });
}
