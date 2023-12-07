import 'package:flutter/material.dart';
import 'package:wtravel_app/screens/perjalanan_screen.dart';

class TambahItem extends StatelessWidget {
  const TambahItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F3F5),
      appBar: AppBar(
        title: const Text(
          'Tambah Item',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF140C47)),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/images/bromo.jpg',
                        height: 100,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Bromo',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/perjalanan-simpan-location.png',
                            ),
                            const SizedBox(width: 3),
                            const Text(
                              'Jawa Timur',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF140C47)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Rating :',
                              style: TextStyle(fontSize: 11),
                            ),
                            Image.asset(
                              'assets/icons/perjalanan-simpan-bintang.png',
                              height: 12,
                              width: 12,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(width: 3),
                            const Text('4.5', style: TextStyle(fontSize: 11)),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              'Rp 300.000',
                              style: TextStyle(
                                  color: Color(0xFF140C47), fontSize: 10),
                            ),
                            Text(
                              '/orang',
                              style: TextStyle(
                                  color: Color(0xFFCACACA), fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Checkbox(value: true, onChanged: (value) {}),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/images/komodoisland.jpg',
                        height: 100,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Pulau Komodo',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/perjalanan-simpan-location.png',
                            ),
                            const SizedBox(width: 3),
                            const Text(
                              'Nusa Tenggara Timur',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF140C47)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Rating :',
                              style: TextStyle(fontSize: 11),
                            ),
                            Image.asset(
                              'assets/icons/perjalanan-simpan-bintang.png',
                              height: 12,
                              width: 12,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(width: 3),
                            const Text('4.7', style: TextStyle(fontSize: 11)),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              'Rp 150.000',
                              style: TextStyle(
                                  color: Color(0xFF140C47), fontSize: 10),
                            ),
                            Text(
                              '/orang',
                              style: TextStyle(
                                  color: Color(0xFFCACACA), fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Checkbox(value: true, onChanged: (value) {}),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 450),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Perjalanan(),
                    ),
                    (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF140C47),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Simpan',
                  style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
