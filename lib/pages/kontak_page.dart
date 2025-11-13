// pages/kontak_page.dart
import 'package:flutter/material.dart';

class KontakPage extends StatelessWidget {
  final List<Map<String,String>> contacts = [
    {'name': 'John Doe', 'image': 'assets/contact1.jpg'},
    {'name': 'Jane Smith', 'image': 'assets/contact2.jpg'},
    {'name': 'Michael Johnson', 'image': 'assets/contact3.jpg'},
    {'name': 'Emily Davis', 'image': 'assets/contact4.jpg'},
    {'name': 'William Brown', 'image': 'assets/contact5.jpg'},
    {'name': 'Olivia Garcia', 'image': 'assets/contact6.jpg'},
    {'name': 'James Wilson', 'image': 'assets/contact7.jpg'},
    {'name': 'Sophia Martinez', 'image': 'assets/contact8.jpg'},
    {'name': 'Liam Anderson', 'image': 'assets/contact9.jpg'},
    {'name': 'Ava Thomas', 'image': 'assets/contact10.jpg'},
    {'name': 'Noah Jackson', 'image': 'assets/contact11.jpg'},
    {'name': 'Mia White', 'image': 'assets/contact12.jpg'},
    {'name': 'Lucas Harris', 'image': 'assets/contact13.jpg'},
    {'name': 'Amelia Lewis', 'image': 'assets/contact14.jpg'},
    {'name': 'Ethan Clark', 'image': 'assets/contact15.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kontak')),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(contact['image']!),
            ),
            title: Text(contact['name']!),
          );
        },
      ),
    );
  }
}
