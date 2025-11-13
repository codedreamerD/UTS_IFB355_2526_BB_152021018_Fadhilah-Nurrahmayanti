// pages/dashboard.dart
import 'package:flutter/material.dart';
import 'biodata_page.dart';
import 'kontak_page.dart';
import 'kalkulator_page.dart';
import 'cuaca_page.dart';
import 'berita_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  // Daftar halaman yang ditampilkan
  final List<Widget> _pages = [
    BiodataPage(),
    KontakPage(),
    KalkulatorPage(),
    CuacaPage(),
    BeritaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // tampilkan halaman terpilih
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed, // tetap jika item <=4
        onTap: (int index) {
          setState(() {
            _selectedIndex = index; // pindah halaman
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person), label: 'Biodata'),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts), label: 'Kontak'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate), label: 'Kalkulator'),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud), label: 'Cuaca'),
          BottomNavigationBarItem(
            icon: Icon(Icons.article), label: 'Berita'),
        ],
      ),
    );
  }
}
