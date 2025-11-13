// pages/splash_screen.dart
import 'dart:async'; // Untuk menggunakan Timer
import 'package:flutter/material.dart';
import 'dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Setelah 5 detik, pindah ke dashboard
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => DashboardPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Judul aplikasi
            Text('Aplikasi Mobile', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            // Foto diri (aset)
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(height: 10),
            // NRP dan nama
            Text('NRP: 152021018', style: TextStyle(fontSize: 18)),
            Text('Nama: Fadhilah Nurrahmayanti', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}