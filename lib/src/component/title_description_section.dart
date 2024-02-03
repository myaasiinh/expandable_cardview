import 'package:flutter/material.dart';

/// A widget that displays a title and description in a column layout.
class TitleDescriptionSection extends StatelessWidget {
  /// The title to display.
  final String? title;

  /// The description to display.
  final String? deskripsi;

  /// Creates a title and description section.
  const TitleDescriptionSection({
    Key? key,
    this.title,
    this.deskripsi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Title text widget with padding
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Text(
            title ?? '', // Display title text or empty string if null
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        // Description text widget with padding
        Padding(
          padding: const EdgeInsets.only(left: 12, top: 10),
          child: Text(deskripsi ?? ''), // Display description text or empty string if null
        ),
        const SizedBox(height: 16), // Spacer widget for additional spacing
      ],
    );
  }
}
