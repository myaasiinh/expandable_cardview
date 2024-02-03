// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

/// A widget for displaying a list of detail data.
class DetailSection extends StatelessWidget {
  /// The list of detail data to display.
  final List<String> detailData;

  /// Creates a detail section widget.
  const DetailSection({
    Key? key,
    required this.detailData, // The detail data list is required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Expand to fill available width
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start of the column
        children: List.generate(detailData.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0), // Add vertical padding
            child: Padding(
              padding: const EdgeInsets.only(left: 16), // Add left padding
              child: Text(detailData[index]), // Display detail data text
            ),
          );
        }),
      ),
    );
  }
}
