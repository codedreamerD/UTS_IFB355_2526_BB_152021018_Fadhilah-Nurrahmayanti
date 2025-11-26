// main.dart
import 'package:flutter/material.dart';
import 'pages/splash_screen.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Aplikasi utama Flutter
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS Pemrograman Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Halaman pertama yang akan ditampilkan saat aplikasi dibuka
      home: SplashScreen(),
    );
  }
}
