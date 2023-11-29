import 'package:flutter/material.dart';
import 'package:wtravel_app/size_config.dart';
import 'package:wtravel_app/widgets/default_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nama',
                hintText: 'Masukkan nama lengkap',
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Masukkan alamat email',
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Masukkan kata sandi',
              ),
            ),
            const SizedBox(height: 30),
            DefaultButton(
              text: "Daftar",
              press: () {
                // Implementasi logika pendaftaran di sini
                // Anda dapat menambahkan validasi, pemrosesan data, dll.
                // Setelah pendaftaran berhasil, Anda dapat menavigasi pengguna ke halaman lain.
              },
            ),
          ],
        ),
      ),
    );
  }
}
