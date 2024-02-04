// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

library nested_expandable_cardview;

import 'package:flutter/material.dart';
import 'src/component/custom_card.dart';
import 'src/component/expand_collapse_button.dart';
import 'src/component/title_description_section.dart';
import 'src/component/detail_section.dart';
import 'src/component/section_row.dart';

/// A widget that displays an expandable card view with title, description, sections, and buttons.
class ExpandableCard extends StatefulWidget {
  /// The title of the card.
  final String? title;

  /// The description of the card.
  final String? deskripsi;

  /// The label for button 1.
  final String? button1Value;

  /// The label for button 2.
  final String? button2Value;

  /// Fungsi callback ketika button2 ditekan.
  final VoidCallback? onPressedButton2;

  /// The number of section rows.
  final int sectionRowCount;

  /// The titles for each section row.
  final List<String> sectionRowTitles;

  /// The total text.
  final int? totalText;

  /// The background color of the card.
  final Color? backgroundColor;

  /// The elevation of the card.
  final double? elevation;

  /// The elevation of button 2.
  final double? button2Elevation;

  /// The color of button 2.
  final Color? button2Color;

  /// The text color of button 1.
  final Color? button1TextColor;

  /// The border radius of button 1.
  final double? button1BorderRadius;

  /// The border radius of button 2.
  final double? button2BorderRadius;



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
    this.deskripsi,
    this.button1Value,
    this.button2Value,
    required this.sectionRowCount,
    required this.sectionRowTitles,
    this.totalText,
    this.backgroundColor,
    this.elevation,
    this.button2Elevation,
    this.button2Color,
    this.onPressedButton2,
    this.button1TextColor,
    this.button1BorderRadius,
    this.button2BorderRadius,
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
            deskripsi: widget.deskripsi,
          ),
          if (_isExpanded)
            Column(
              children: List.generate(widget.sectionRowCount, (index) {
                return Column(
                  children: [
                    const Divider(
                      height: 0,
                    ), // Divider before each sectionRow
                    SectionRow(
                      title: widget.sectionRowTitles[index],
                      isExpanded: _expandedSectionIndex == index,
                      onTap: () {
                        _toggleSectionRow(index);
                      },
                    ),
                    if (_expandedSectionIndex == index)
                      const Divider(
                        height: 0,
                      ), // Divider before DetailSection
                    if (_expandedSectionIndex == index)
                      DetailSection(
                        detailData: widget.sectionRowData[
                                widget.sectionRowTitles[index]] ??
                            [],
                      ),
                    if (_expandedSectionIndex == index ||
                        index == widget.sectionRowCount - 1)
                      const Divider(
                        height: 0,
                      ), // Divider before button1 and button2
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
                buttonText: _isExpanded ? 'Tutup' : 'Detail',
                textColor: widget.button1TextColor,
                buttonBorderRadius: widget.button1BorderRadius,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, top: 10),
                child: ElevatedButton(
                  onPressed: widget.onPressedButton2,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      widget.button2Color ?? Colors.blue,
                    ),
                    elevation: MaterialStateProperty.all<double>(
                      widget.button2Elevation ?? 0,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          widget.button2BorderRadius ?? 0,
                        ),
                      ),
                    ),
                  ),
                  child: Text(
                    widget.button2Value ?? '',
                    style: TextStyle(color: Colors.white),
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
