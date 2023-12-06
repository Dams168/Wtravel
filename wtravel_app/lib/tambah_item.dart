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
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      child: Image.asset(
                        'assets/images/tambah-item-gunung-bromo.jpg',
                        height: MediaQuery.of(context).size.height,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Bromo',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
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
                                const Text('4,5',
                                    style: TextStyle(fontSize: 11)),
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
                      const SizedBox(width: 100),
                      SizedBox(
                        child: Checkbox(value: true, onChanged: (value) {}),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      child: Image.asset(
                        'assets/images/tambah-item-gunung-pulaukomodo.jpg',
                        height: MediaQuery.of(context).size.height,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Pulau Komodo',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
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
                                const Text('4,7',
                                    style: TextStyle(fontSize: 11)),
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
                      const SizedBox(width: 73),
                      SizedBox(
                        child: Checkbox(value: true, onChanged: (value) {}),
                      ),
                      const SizedBox(height: 200),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF140C47),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text(
                                'Lanjutkan',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF), fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
