# Expandable CardView for Flutter

[![pub package](https://img.shields.io/pub/v/expandable_cardview.svg)](https://pub.dev/packages/expandable_cardview)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A Flutter library for creating interactive, expandable cards with a clean and modern design. Perfect for displaying order details, reviews, or other structured information.

![expandable card](https://github.com/myaasiinh/expandable_cardview/assets/54269175/0a9236db-56b2-4f73-a353-8de31cb4612a)

---

## 💡 Concept

**Expandable CardView** is designed with the principle of *Progressive Disclosure*, a UI design technique aimed at keeping interfaces clean by hiding complex information until users need it.

Its primary goal is to provide a better user experience when interacting with data lists containing multiple details without having to navigate to another page or cluttering the screen.

---

## ✨ Features

- **Nested Expansion**: Supports two-level expansion. The main card can be expanded to show categories, and each category can be further expanded to see specific details.
- **Fully Customizable UI**: Adjust `elevation`, `backgroundColor`, `borderRadius`, and `padding` to match your application's design.
- **Dynamic Content**: Uses a `Map` data structure to easily integrate with API or database data.
- **Action Buttons**: Includes a customizable action button and an expand/collapse toggle.
- **Automatic Dividers**: Automatically managed dividers between rows to maintain visual aesthetics.

---

## 🛠️ Mechanisms & Workflow

### 1. State Management
The application uses a `StatefulWidget` to manage two main states:
- `_isExpanded`: Determines whether the category list inside the card is shown.
- `_expandedSectionIndex`: Tracks the index of the currently expanded section row to display its details.

### 2. Component Architecture
This library is built with a modular approach:
- **`CustomCard`**: The main wrapper handling the card's elevation and shape.
- **`TitleDescriptionSection`**: A component to display the title and short description at the top.
- **`SectionRow`**: An interactive widget acting as a second-level expansion trigger.
- **`DetailSection`**: The detailed content that appears dynamically when a `SectionRow` is active.

### 3. Expansion Logic
The system uses `List.generate` to map `sectionRowTitles` into a collection of widgets. Conditional logic compares `_expandedSectionIndex` with the current index, ensuring only one detail section is open at a time depending on user interaction.

---

## 🚀 Installation

Add `expandable_cardview` to your `pubspec.yaml` file:

```yaml
dependencies:
  expandable_cardview: ^1.2.0
```

Don't forget to import the library in your Dart file:

```dart
import 'package:expandable_cardview/expandable_cardview.dart';
```

---

## 📖 Example Usage

```dart
ExpandableCard(
  title: 'Fried Rice',
  description: 'Confirmed Order',
  actionButtonText: 'Buy Now',
  sectionRowCount: 3,
  sectionRowTitles: const ['Review', 'Order', 'Shipping'],
  totalText: 3,
  backgroundColor: Colors.white,
  elevation: 4.0,
  actionButtonElevation: 5.0,
  actionButtonColor: Colors.blue,
  expandCollapseButtonTextColor: Colors.black,
  actionButtonBorderRadius: 5.0,
  cardBorderRadius: 10,
  sectionRowData: const {
    'Review': ['Good portion size', 'Taste good', 'Overall good'],
    'Order': ['Fried Rice', '1', 'RM 10.00'],
    'Shipping': ['Street 1', 'City 1', '12345'],
  },
  collapsedButtonText: 'Details',
  expandedButtonText: 'Close',
  onActionButtonPressed: () {
      print("Button pressed!");
  },
)
```

---

## 📺 Demo

[Watch the demo video here](https://github.com/myaasiinh/expandable_cardview/assets/54269175/d942b65c-8236-4fa4-8b82-08a339e3c560)

---

## 👨‍💻 Maintainer

[![GitHub](https://img.shields.io/badge/GitHub-Profile-blue?style=flat-square&logo=github)](https://myaasiinh.github.io)
[![Ko-fi](https://img.shields.io/badge/Ko--fi-Support-orange?style=flat-square&logo=ko-fi)](https://ko-fi.com/myaasiinh)

**Muhammad Yaasiin Hidayatulloh**
📫 Contact me: myaasiinh@gmail.com
