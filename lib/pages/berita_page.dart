// pages/berita_page.dart
import 'package:flutter/material.dart';

// 1. Buat Model Data
class BeritaModel {
  final String title;
  final String snippet;
  final String imageAsset;

  const BeritaModel({
    required this.title,
    required this.snippet,
    required this.imageAsset,
  });
}

// 2. Buat Halaman
class BeritaPage extends StatelessWidget {
  const BeritaPage({super.key});

  // 3. Buat Data Statis (beberapa berita)
  final List<BeritaModel> allBerita = const [
    BeritaModel(
      title: 'Kronologi-Sebab Wali Kota Muslim New York Mamdani Mau Diusir dari AS',
      snippet: 'Calon walikota New York City dari Partai Demokrat, Zohran Mamdani, berbicara di atas panggung setelah memenangkan pemilihan Walikota New York City 2025, pada rapat umum malam pemilihan di wilayah Brooklyn, New York City, New York, AS, 4 November 2025. (REUTERS/Shannon Stapleton)',
      imageAsset: 'assets/berita1.png',
    ),
    BeritaModel(
      title: 'Ngerinya Pembantaian oleh Milisi RSF Tewaskan 2.000 Orang di El Fasher Sudan',
      snippet: 'Tiga personel RSF tersenyum ke arah kamera saat mereka berdiri di depan mobil-mobil yang hancur di sebuah lokasi dekat el-Fasher (via BBC)',
      imageAsset: 'assets/berita2.png',
    ),
    BeritaModel(
      title: 'Api Kembali Menyala di Sukahaji, Kebakaran yang Ketiga Sepanjang Tahun Ini',
      snippet: 'Sejumlah kios di Sukahaji, Bandung dilanda kebakaran, Selasa, 11 November 2025. (Foto: Warga Sukahaji)',
      imageAsset: 'assets/berita3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Berita'),
      ),
      // 4. Gunakan ListView.builder
      body: ListView.builder(
        itemCount: allBerita.length,
        itemBuilder: (BuildContext context, int index) {
          final berita = allBerita[index];

          // 5. Buat UI untuk setiap item
          return Card(
            margin: const EdgeInsets.all(10),
            // ClipRRect untuk membuat sudut gambar melengkung
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gambar berita
                  Image.asset(
                    berita.imageAsset,
                    height: 180,
                    width: double.infinity, // Lebar penuh
                    fit: BoxFit.cover,
                  ),
                  // Padding untuk teks (judul dan snippet)
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          berita.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          berita.snippet,
                          style: const TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}