// pages/kalkulator_page.dart
import 'package:flutter/material.dart';
import 'dart:math';

class KalkulatorPage extends StatefulWidget {
  @override
  _KalkulatorPageState createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  String result = '';

  void _calculate(String op) {
    double a = double.tryParse(num1Controller.text) ?? 0;
    double b = double.tryParse(num2Controller.text) ?? 0;
    double res = 0.0;
    if (op == '+') res = a + b;
    if (op == '-') res = a - b;
    if (op == '×') res = a * b;
    if (op == '÷') res = b != 0 ? a / b : 0;
    if (op == 'x²') res = pow(a, 2).toDouble();
    if (op == '√x') res = a >= 0 ? sqrt(a) : 0;
    setState(() {
      result = res.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kalkulator')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input angka 1
            TextField(
              controller: num1Controller,
              decoration: InputDecoration(labelText: 'Angka 1'),
              keyboardType: TextInputType.number,
            ),
            // Input angka 2
            TextField(
              controller: num2Controller,
              decoration: InputDecoration(labelText: 'Angka 2'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            // Baris tombol operasi
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(onPressed: () => _calculate('+'), child: Text('+')),
                ElevatedButton(onPressed: () => _calculate('-'), child: Text('-')),
                ElevatedButton(onPressed: () => _calculate('×'), child: Text('×')),
                ElevatedButton(onPressed: () => _calculate('÷'), child: Text('÷')),
                ElevatedButton(onPressed: () => _calculate('x²'), child: Text('x²')),
                ElevatedButton(onPressed: () => _calculate('√x'), child: Text('√x')),
                // Tombol Clear
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      num1Controller.clear();
                      num2Controller.clear();
                      result = '';
                    });
                  },
                  child: Text('Clear'),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Tampilan hasil
            Text('Hasil: $result', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
