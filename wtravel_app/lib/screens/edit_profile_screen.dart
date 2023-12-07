import 'package:flutter/material.dart';
import 'package:wtravel_app/constants.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const EditProfileCard(
              title: 'Foto',
              content: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
            const SizedBox(height: 16.0),
            const EditProfileCard(
              title: 'Nama',
              content: Text(
                'Qianziano Qylan Aldebaran',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            const SizedBox(height: 16.0),
            const EditProfileCard(
              title: 'Jenis Kelamin',
              content: Text(
                'Laki-Laki',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            const SizedBox(height: 16.0),
            const EditProfileCard(
              title: 'Telepon',
              content: Text(
                '+62 857-1234-5678',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            const SizedBox(height: 16.0),
            const EditProfileCard(
              title: 'Email',
              content: Text(
                'qylan@gmail.com',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            const SizedBox(height: 16.0),
            const EditProfileCard(
              title: 'Alamat',
              content: Text(
                'Jakarta',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                textStyle: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.white, // Set text color to white
                ),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: const Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}

class EditProfileCard extends StatelessWidget {
  final String title;
  final Widget content;

  const EditProfileCard({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            content,
          ],
        ),
      ),
    );
  }
}
