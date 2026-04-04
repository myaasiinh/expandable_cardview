# Expandable CardView for Flutter

[![pub package](https://img.shields.io/pub/v/expandable_cardview.svg)](https://pub.dev/packages/expandable_cardview)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Library Flutter untuk membuat kartu yang interaktif dan dapat diekspansi dengan desain yang bersih dan modern. Sangat cocok untuk menampilkan detail pesanan, ulasan, atau informasi terstruktur lainnya.

![expandable card](https://github.com/myaasiinh/expandable_cardview/assets/54269175/0a9236db-56b2-4f73-a353-8de31cb4612a)

---

## 💡 Konsep Aplikasi

**Expandable CardView** dirancang dengan prinsip *Progressive Disclosure*, sebuah teknik desain UI yang bertujuan untuk menjaga antarmuka tetap bersih dengan menyembunyikan informasi kompleks sampai pengguna membutuhkannya. 

Tujuan utamanya adalah memberikan pengalaman pengguna yang lebih baik saat berinteraksi dengan daftar data yang memiliki banyak rincian tanpa harus berpindah halaman atau membuat layar terasa penuh.

---

## ✨ Fitur Utama

- **Nested Expansion**: Dukungan ekspansi dua tingkat. Kartu utama dapat dibuka untuk melihat kategori, dan setiap kategori dapat dibuka lagi untuk melihat detail spesifik.
- **UI Kustomisasi Penuh**: Atur `elevation`, `backgroundColor`, `borderRadius`, hingga `padding` sesuai dengan desain aplikasi Anda.
- **Konten Dinamis**: Menggunakan struktur data `Map` yang memudahkan integrasi dengan data dari API atau database.
- **Dual Action Buttons**: Tersedia dua tombol aksi yang dapat dikustomisasi label dan fungsinya.
- **Divider Otomatis**: Pemisah antar baris yang dikelola secara otomatis untuk menjaga estetika visual.

---

## 🛠️ Mekanisme & Cara Kerja

### 1. Manajemen State
Aplikasi ini menggunakan `StatefulWidget` untuk mengelola dua status utama:
- `_isExpanded`: Menentukan apakah daftar kategori di dalam kartu ditampilkan.
- `_expandedSectionIndex`: Melacak indeks baris spesifik yang sedang diekspansi untuk menampilkan detailnya.

### 2. Arsitektur Komponen
Library ini dibangun dengan pendekatan modular:
- **`CustomCard`**: Wrapper utama yang menangani elevasi dan bentuk kartu.
- **`TitleDescriptionSection`**: Komponen untuk menampilkan judul dan deskripsi singkat di bagian atas.
- **`SectionRow`**: Widget interaktif yang berfungsi sebagai pemicu ekspansi tingkat kedua.
- **`DetailSection`**: Konten rincian yang muncul secara dinamis saat `SectionRow` aktif.

### 3. Alur Logika Ekspansi
Sistem menggunakan `List.generate` untuk memetakan `sectionRowTitles` ke dalam kumpulan widget. Logika kondisional digunakan untuk membandingkan `_expandedSectionIndex` dengan index saat ini, sehingga hanya satu detail yang terbuka dalam satu waktu (opsional, tergantung interaksi pengguna).

---

## 🚀 Instalasi

Tambahkan `expandable_cardview` ke dalam file `pubspec.yaml` Anda:

```yaml
dependencies:
  expandable_cardview: ^1.1.0
```

Jangan lupa untuk mengimpor library di file Dart Anda:

```dart
import 'package:expandable_cardview/expandable_cardview.dart';
```

---

## 📖 Contoh Penggunaan

```dart
ExpandableCard(
  title: 'Fried Rice',
  description: 'Confirmed Order',
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
    'Review': ['Good portion size', 'Taste good', 'Overall good'],
    'Order': ['Fried Rice', '1', 'RM 10.00'],
    'Shipping': ['Street 1', 'City 1', '12345'],
  },
  textButtonActionFirst: 'Close',
  textButtonActionSecond: 'Details',
  onPressedButton2: () {
      print("Button pressed!");
  },
)
```

---

## 📺 Demo

[Tonton video demo di sini](https://github.com/myaasiinh/expandable_cardview/assets/54269175/d942b65c-8236-4fa4-8b82-08a339e3c560)

---

## 👨‍💻 Maintainer

[![GitHub](https://img.shields.io/badge/GitHub-Profile-blue?style=flat-square&logo=github)](https://myaasiinh.github.io)
[![Ko-fi](https://img.shields.io/badge/Ko--fi-Support-orange?style=flat-square&logo=ko-fi)](https://ko-fi.com/myaasiinh)

**Muhammad Yaasiin Hidayatulloh**
📫 Hubungi saya: myaasiinh@gmail.com
