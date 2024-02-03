import 'package:flutter/material.dart';

/// A widget representing a section row with a title and expand/collapse icon.
class SectionRow extends StatelessWidget {
  /// The title of the section row.
  final String title;

  /// Whether the section row is expanded or collapsed.
  final bool isExpanded;

  /// Callback function when the section row is tapped.
  final VoidCallback onTap;

  /// Creates a section row widget.
  const SectionRow({
    Key? key,
    required this.title, // The title is required
    required this.isExpanded, // The expanded state is required
    required this.onTap, // The onTap callback is required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title), // Display the title text
      trailing: IconButton(
        onPressed: onTap, // Execute onTap callback when button is pressed
        icon: Icon(isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down), // Display appropriate icon based on expanded state
      ),
    );
  }
}
