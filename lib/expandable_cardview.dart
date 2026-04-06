// ignore_for_file: library_private_types_in_public_api

library nested_expandable_cardview;

import 'package:flutter/material.dart';
import 'src/components/custom_card.dart';
import 'src/components/expand_collapse_button.dart';
import 'src/components/title_description_section.dart';
import 'src/components/detail_section.dart';
import 'src/components/section_row.dart';

/// A widget that displays an expandable card view with title, description, sections, and buttons.
class ExpandableCard extends StatefulWidget {
  /// The title of the card.
  final String? title;

  /// The description of the card.
  final String? description;

  /// The text for the 'Close' / expand button.
  final String expandedButtonText;

  /// The text for the 'Details' / collapse button.
  final String collapsedButtonText;

  /// The label for the primary button.
  final String? actionButtonText;

  /// Callback function when the primary button is pressed.
  final VoidCallback? onActionButtonPressed;

  /// The number of section rows.
  final int sectionRowCount;

  /// The titles for each section row.
  final List<String> sectionRowTitles;

  /// The total text.
  final int? totalText; // Consider removing if unused, but leaving as is

  /// The background color of the card.
  final Color? backgroundColor;

  /// The elevation of the card.
  final double? elevation;

  /// The elevation of the primary button.
  final double? actionButtonElevation;

  /// The color of the primary button.
  final Color? actionButtonColor;

  /// The text color of the expand/collapse button.
  final Color? expandCollapseButtonTextColor;

  /// The border radius of the expand/collapse button.
  final double? expandCollapseButtonBorderRadius;

  /// The border radius of the primary button.
  final double? actionButtonBorderRadius;

  /// The border radius of the card.
  final double? cardBorderRadius;

  /// The padding of the card.
  final EdgeInsets? padding;

  /// The data for each section row.
  final Map<String, List<String>> sectionRowData;

  /// Creates an expandable card view.
  const ExpandableCard({
    Key? key,
    this.title,
    this.description,
    this.actionButtonText,
    required this.expandedButtonText,
    required this.collapsedButtonText,
    required this.sectionRowCount,
    required this.sectionRowTitles,
    this.totalText,
    this.backgroundColor,
    this.elevation,
    this.actionButtonElevation,
    this.actionButtonColor,
    this.onActionButtonPressed,
    this.expandCollapseButtonTextColor,
    this.expandCollapseButtonBorderRadius,
    this.actionButtonBorderRadius,
    this.cardBorderRadius,
    this.padding,
    required this.sectionRowData,
  }) : super(key: key);

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool _isExpanded = false;
  int _expandedSectionIndex = -1;

  void _toggleSection() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  void _toggleSectionRow(int index) {
    setState(() {
      _expandedSectionIndex = _expandedSectionIndex == index ? -1 : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundColor: widget.backgroundColor,
      elevation: widget.elevation,
      cardBorderRadius: widget.cardBorderRadius,
      padding: widget.padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TitleDescriptionSection(
            title: widget.title,
            description: widget.description,
          ),
          if (_isExpanded)
            Column(
              children: List.generate(widget.sectionRowCount, (index) {
                return Column(
                  children: [
                    const Divider(height: 0), 
                    SectionRow(
                      title: widget.sectionRowTitles[index],
                      isExpanded: _expandedSectionIndex == index,
                      onTap: () {
                        _toggleSectionRow(index);
                      },
                    ),
                    if (_expandedSectionIndex == index)
                      const Divider(height: 0),
                    if (_expandedSectionIndex == index)
                      DetailSection(
                        detailData: widget.sectionRowData[widget.sectionRowTitles[index]] ?? [],
                      ),
                    if (_expandedSectionIndex == index || index == widget.sectionRowCount - 1)
                      const Divider(height: 0),
                  ],
                );
              }),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExpandCollapseButton(
                isExpanded: _isExpanded,
                onPressed: _toggleSection,
                buttonText: _isExpanded ? widget.expandedButtonText : widget.collapsedButtonText,
                textColor: widget.expandCollapseButtonTextColor,
                buttonBorderRadius: widget.expandCollapseButtonBorderRadius,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, top: 10),
                child: ElevatedButton(
                  onPressed: widget.onActionButtonPressed,
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      widget.actionButtonColor ?? Colors.blue,
                    ),
                    elevation: WidgetStateProperty.all<double>(
                      widget.actionButtonElevation ?? 0,
                    ),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          widget.actionButtonBorderRadius ?? 0,
                        ),
                      ),
                    ),
                  ),
                  child: Text(
                    widget.actionButtonText ?? '',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
