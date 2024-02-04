
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  // final String title;
  // final String description;

  const DetailPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('This is the detail page.'),
      ),
    );
  }
}
 
