// pages/cuaca_page.dart
import 'package:flutter/material.dart';

class CuacaPage extends StatelessWidget { 
  final String lokasi = "Bandung";
  final String suhu = "22°";
  final String kondisi = "Cerah Berawan";
  final String kelembapan = "80%";
  final String angin = "10 km/jam";
  
  const CuacaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // SingleChildScrollView agar muat walau layar kecil
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/cuaca.png',
              height: 200, // Atur ukurannya
            ),
            const SizedBox(height: 20),
            
            // SUHU UTAMA
            Text(
              suhu,
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w100, // Tipis
              ),
            ),
            const SizedBox(height: 30),
            
            // INFORMASI TAMBAHAN
            // Card untuk menampilkan informasi kelembapan dan angin
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(kelembapan),
                      ],
                    ),
                    // Info Angin
                    Column(
                      children: [
                        Text(angin),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}