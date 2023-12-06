import 'package:flutter/material.dart';

class TambahItem extends StatelessWidget {
  const TambahItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F3F5),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tambah Item',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF140C47)),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 90,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Row(
                children: [
                  Container(
                    child: Image.asset('assets/'),
                  ),
                  Column(),
                  SizedBox()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
