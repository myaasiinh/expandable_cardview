// ignore_for_file: use_key_in_widget_constructors

import 'package:expandable_cardview/expandable_cardview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expandable Card Example'),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Example of using ExpandableCard widget
                ExpandableCard(
                  title: 'Bebek Goreng', // Title of the card
                  deskripsi: 'Bebek Goreng pedas dan gurih', // Description of the card
                  button2Value: 'Konfirmasi', // Label for button 2
                  sectionRowCount: 3, // Number of section rows
                  sectionRowTitles: ['Ulasan', 'Pesanan', 'Ongkir'], // Titles for each section row
                  totalText: 3, // Total text count
                  backgroundColor: Colors.white, // Background color of the card
                  elevation: 4.0, // Elevation of the card
                  button2Elevation: 5.0, // Elevation of button 2
                  button2Color: Colors.blue, // Color of button 2
                  button1TextColor: Colors.black, // Text color of button 1
                  button2BorderRadius: 5.0, // Border radius of button 2
                  cardBorderRadius: 10, // Border radius of the card
                  sectionRowData: {
                    'Ulasan': ['Rating bagus', 'Makanan sedap', 'Order lagi besok'], // Data for Ulasan section
                    'Pesanan': ['Jumbo', 'Pedas', 'Ga pake nasi'], // Data for Pesanan section
                    'Ongkir': ['Genuk', 'Jalan Mrican no 2', 'kodepos 0164'], // Data for Ongkir section
                  },
                ),
                SizedBox(height: 16), // Spacer widget for additional spacing
                // Another example of using ExpandableCard widget
                ExpandableCard(
                  title: 'Ayam Goreng', // Title of the card
                  deskripsi: 'Ayam Goreng pedas dan gurih', // Description of the card
                  button2Value: 'Konfirmasi', // Label for button 2
                  sectionRowCount: 3, // Number of section rows
                  sectionRowTitles: ['Ulasan', 'Pesanan', 'Ongkir'], // Titles for each section row
                  totalText: 3, // Total text count
                  backgroundColor: Colors.white, // Background color of the card
                  elevation: 4.0, // Elevation of the card
                  button2Elevation: 5.0, // Elevation of button 2
                  button2Color: Colors.blue, // Color of button 2
                  button1TextColor: Colors.black, // Text color of button 1
                  button2BorderRadius: 5.0, // Border radius of button 2
                  cardBorderRadius: 10, // Border radius of the card
                  sectionRowData: {
                    'Ulasan': ['Rating bagus', 'Makanan sedap', 'Order lagi besok'], // Data for Ulasan section
                    'Pesanan': ['Jumbo', 'Pedas', 'Ga pake nasi'], // Data for Pesanan section
                    'Ongkir': ['Genuk', 'Jalan Mrican no 2', 'kodepos 0164'], // Data for Ongkir section
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
