// ignore_for_file: avoid_print, use_key_in_widget_constructors

import 'package:expandable_cardview/expandable_cardview.dart';
import 'package:flutter/material.dart';
import 'detail_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expandable Card Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ExpandableCard(
                title: 'Fried Rice',
                deskripsi: 'Fried rice with chicken and egg',
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
                sectionRowData: const {
                  'Review': [
                    'Good portion size',
                    'Taste good',
                    'Overall good'
                  ],
                  'Order': ['Fried Rice', '1', 'RM 10.00'],
                  'Shipping': ['Street 1', 'City 1', '12345'],
                },
                onPressedButton2: () {
                  showMovePage(context);
                },
              );
            },
          ),
      ),
    );
  }

  void showMovePage(BuildContext context) {
    // Implementasi dialog atau navigasi ke halaman lain di sini
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm'),
          content: const Text('Are you sure you want to move the payment page?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                print('OK button pressed');
                //move to detail page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailPage()),
                );
              },
              child: const Text('OK'),
            ),
            TextButton(
              onPressed: () {
                print('Cancel button pressed');
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
