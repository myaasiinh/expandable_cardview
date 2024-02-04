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
                title: 'Bebek Goreng',
                deskripsi: 'Bebek Goreng pedas dan gurih',
                button2Value: 'Konfirmasi',
                sectionRowCount: 3,
                sectionRowTitles: const ['Ulasan', 'Pesanan', 'Ongkir'],
                totalText: 3,
                backgroundColor: Colors.white,
                elevation: 4.0,
                button2Elevation: 5.0,
                button2Color: Colors.blue,
                button1TextColor: Colors.black,
                button2BorderRadius: 5.0,
                cardBorderRadius: 10,
                sectionRowData: const {
                  'Ulasan': [
                    'Rating bagus',
                    'Makanan sedap',
                    'Order lagi besok'
                  ],
                  'Pesanan': ['Jumbo', 'Pedas', 'Ga pake nasi'],
                  'Ongkir': ['Genuk', 'Jalan Mrican no 2', 'kodepos 0164'],
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
          title: const Text('Konfirmasi'),
          content: const Text('Apakah Anda yakin ingin memindahkan halaman?'),
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
              child: const Text('Batal'),
            ),
          ],
        );
      },
    );
  }
}
