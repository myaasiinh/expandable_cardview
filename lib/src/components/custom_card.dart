import 'package:flutter/material.dart';

/// A custom card widget with customizable background color, elevation, and padding.
class CustomCard extends StatelessWidget {
  /// The background color of the card.
  final Color? backgroundColor;

  /// The elevation of the card.
  final double? elevation;

  /// The border radius of the card.
  final double? cardBorderRadius;

  /// The padding of the card's content.
  final EdgeInsets? padding;

  /// The child widget to be displayed inside the card.
  final Widget child;

  /// Creates a custom card widget.
  const CustomCard({
    Key? key,
    this.backgroundColor, // The background color is optional
    this.elevation, // The elevation is optional
    this.cardBorderRadius, // The border radius is optional
    this.padding, // The padding is optional
    required this.child, // The child widget is required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor, // Set custom background color
      elevation: elevation, // Set custom elevation
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(cardBorderRadius ??
            0), // Apply custom border radius or default to 0
      ),
      child: Padding(
        padding: padding ??
            EdgeInsets.zero, // Apply custom padding or default to zero padding
        child: child, // Display the child widget inside the card
      ),
    );
  }
}
