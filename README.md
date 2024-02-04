## Expandable Card Widget Library

### Description
The `ExpandableCard` widget provides a customizable card with expandable sections. It allows users to display detailed information in collapsible sections.

### Add Dependency

Untuk menggunakan `expandable_cardview`, tambahkan dependensi ini pada file `pubspec.yaml` Anda:

```yaml
dependencies:
  expandable_cardview: ^1.0.4
```

### Import Library

```yaml
import 'package:expandable_cardview/expandable_cardview.dart';
```

### Usage
```dart
ExpandableCard(
  title: 'Bebek Goreng',
  deskripsi: 'Bebek Goreng pedas dan gurih',
  button2Value: 'Konfirmasi',
  sectionRowCount: 3,
  sectionRowTitles: ['Ulasan', 'Pesanan', 'Ongkir'],
  totalText: 3,
  backgroundColor: Colors.white,
  elevation: 4.0,
  button2Elevation: 5.0,
  button2Color: Colors.blue,
  button1TextColor: Colors.black,
  button2BorderRadius: 5.0,
  cardBorderRadius: 10,
  sectionRowData: {
    'Ulasan': ['Rating bagus', 'Makanan sedap', 'Order lagi besok'],
    'Pesanan': ['Jumbo', 'Pedas', 'Ga pake nasi'],
    'Ongkir': ['Genuk', 'Jalan Mrican no 2', 'kodepos 0164'],
  },
  onPressedButton2: () {
    // do something calling from custom method or action
  },
)
```

## Demos


[Link ke Demo](https://github.com/myaasiinh/expandable_cardview/assets/54269175/12f8d34d-25f4-44f8-afbc-ad00a074e526)




### 🚧 Maintainer

[![GitHub](https://img.shields.io/badge/GitHub-Profile-blue?style=flat-square&logo=github)](https://myaasiinh.github.io)
[![Ko-fi](https://img.shields.io/badge/Ko--fi-Support-orange?style=flat-square&logo=ko-fi)](https://ko-fi.com/myaasiinh)


**Muhammad Yaasiin Hidayatulloh** <br>
📫 How to reach me: myaasiinh@gmail.com


[pubdev]: https://pub.dev/packages/expandable_cardview
[web flutter]: https://flutter.dev
[github account]: https://myaasiinh.github.io
[Ko-fi account]: https://ko-fi.com/myaasiinh

