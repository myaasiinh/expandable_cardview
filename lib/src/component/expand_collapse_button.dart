// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

/// A button widget for expanding or collapsing content with customizable text and style.
class ExpandCollapseButton extends StatelessWidget {
  /// Whether the content is expanded or collapsed.
  final bool isExpanded;

  /// The callback function when the button is pressed.
  final Function()? onPressed;

  /// The text to display on the button.
  final String buttonText;

  /// The color of the button text.
  final Color? textColor;

  /// The border radius of the button.
  final double? buttonBorderRadius;

  /// Creates an expand/collapse button widget.
  const ExpandCollapseButton({
    Key? key,
    required this.isExpanded, // The expanded state is required
    this.onPressed, // The onPressed callback is optional
    required this.buttonText, // The button text is required
    this.textColor, // The text color is optional
    this.buttonBorderRadius, // The border radius is optional
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed, // Execute onPressed callback when button is pressed
      child: Text(
        buttonText, // Display the button text
        style: TextStyle(color: textColor), // Apply custom text color
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonBorderRadius ??
                0), // Apply custom border radius or default to 0
          ),
        ),
      ),
    );
  }
}
