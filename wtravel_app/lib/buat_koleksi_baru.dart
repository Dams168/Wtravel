import 'package:flutter/material.dart';

class BuatKoleksiBaru extends StatelessWidget {
  const BuatKoleksiBaru({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F3F5),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: Image.asset(
                'assets/icons/perjalanan-koleksi-blue.png',
              ),
            ),
            const Text(
              'Buat Koleksi Baru',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Color(0xFF140C47),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
