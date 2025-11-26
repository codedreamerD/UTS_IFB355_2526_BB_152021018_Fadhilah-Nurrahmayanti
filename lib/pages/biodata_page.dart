// pages/biodata_page.dart
import 'package:flutter/material.dart';

class BiodataPage extends StatefulWidget {
  const BiodataPage({super.key});

  @override
  _BiodataPageState createState() => _BiodataPageState();
}

class _BiodataPageState extends State<BiodataPage> {
  String _selectedProgram = 'Informatika';
  String _gender = 'L';
  DateTime _birthDate = DateTime.now();

  // Fungsi untuk memilih tanggal lahir
  Future<void> _pickDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: _birthDate,
      firstDate: DateTime(1990),
      lastDate: DateTime.now(),
    );
    if (date != null) {
      setState(() {
        _birthDate = date;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Biodata')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Gambar profil
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),
            SizedBox(height: 20),
            // Nama (TextField)
            TextField(
              decoration: InputDecoration(labelText: 'Nama Lengkap'),
            ),
            SizedBox(height: 10),
            // Dropdown Program Studi
            DropdownButtonFormField<String>(
              initialValue: _selectedProgram,
              items: ['Informatika','Sistem Informasi','TE']
                  .map((program) => DropdownMenuItem(
                    value: program, child: Text(program)))
                  .toList(),
              onChanged: (value) {
                setState(() { _selectedProgram = value!; });
              },
              decoration: InputDecoration(labelText: 'Program Studi'),
            ),
            SizedBox(height: 10),
            // Radio Button Jenis Kelamin
            Text('Jenis Kelamin:'),
            ListTile(
              title: Text('Laki-laki'),
              leading: Radio<String>(
                value: 'L',
                groupValue: _gender,
                onChanged: (value) { setState(() { _gender = value!; }); },
              ),
            ),
            ListTile(
              title: Text('Perempuan'),
              leading: Radio<String>(
                value: 'P',
                groupValue: _gender,
                onChanged: (value) { setState(() { _gender = value!; }); },
              ),
            ),
            // Tombol pilih tanggal lahir (Calendar)
            ListTile(
              title: Text('Tanggal Lahir: ${_birthDate.toLocal()}'.split(' ')[0]),
              trailing: Icon(Icons.calendar_today),
              onTap: _pickDate,
            ),
          ],
        ),
      ),
    );
  }
}
