## Expandable Card Widget Library

![expandable card](https://github.com/myaasiinh/expandable_cardview/assets/54269175/0a9236db-56b2-4f73-a353-8de31cb4612a)

### Description
The `ExpandableCard` widget provides a customizable card with expandable sections, facilitating the display of detailed information in collapsible sections. 


### Add Dependency

To use `expandable_cardview`, add this dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  expandable_cardview: ^1.0.7
```

### Import Library

```yaml
import 'package:expandable_cardview/expandable_cardview.dart';
```

### Usage
```dart
ExpandableCard(
  title: 'Fried Rice',
  deskripsi: 'Fried rice with chicken and egg',
  button2Value: 'Buy Now',
  sectionRowCount: 3,
  sectionRowTitles: const ['Review', 'Order', 'Shipping'],
  totalText: 3,
  backgroundColor: Colors.white,
  elevation: 4.0,
  button2Elevation: 5.0,
  button2Color: Colors.blue,
  button1TextColor: Colors.black,
  button2BorderRadius: 5.0,
  cardBorderRadius: 10,
  sectionRowData: const {
  'Review': ['Good portion size','Taste good','Overall good'],
  'Order': ['Fried Rice', '1', 'RM 10.00'],
  'Shipping': ['Street 1', 'City 1', '12345'],
  },
  onPressedButton2: () {
      //do something
  },
);
```

## Demos


[Link ke Demo](https://github.com/myaasiinh/expandable_cardview/assets/54269175/d942b65c-8236-4fa4-8b82-08a339e3c560)




### 🚧 Maintainer

[![GitHub](https://img.shields.io/badge/GitHub-Profile-blue?style=flat-square&logo=github)](https://myaasiinh.github.io)
[![Ko-fi](https://img.shields.io/badge/Ko--fi-Support-orange?style=flat-square&logo=ko-fi)](https://ko-fi.com/myaasiinh)


**Muhammad Yaasiin Hidayatulloh** <br>
📫 How to reach me: myaasiinh@gmail.com


[pubdev]: https://pub.dev/packages/expandable_cardview
[web flutter]: https://flutter.dev
[github account]: https://myaasiinh.github.io
[Ko-fi account]: https://ko-fi.com/myaasiinh

