import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BuatKoleksiBaru extends StatefulWidget {
  const BuatKoleksiBaru({super.key});

  @override
  State<BuatKoleksiBaru> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BuatKoleksiBaru> {
  File? image;

  Future getImage() async {
    final ImagePicker picker = ImagePicker();

    final XFile? imagePicked =
        await picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {});
  }

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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            _buildTextField('Nama Koleksi', 'Nama Koleksi'),
            const SizedBox(height: 10),
            _buildTextField(
                'Tanggal', 'Masukkan Tanggal', Icons.calendar_month_outlined),
            const SizedBox(height: 10),
            _buildTextField('Tambah Cover', 'Pilih Dari Galeri', Icons.image),
            const SizedBox(height: 195),
            _buildButton('Lanjutkan', Colors.white, const Color(0xFF140C47)),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint, [IconData? prefixIcon]) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: Text(
                label,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: hint,
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.white, width: 1),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget _buildButton(String label, Color textColor, Color buttonColor) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              label,
              style: TextStyle(color: textColor, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
