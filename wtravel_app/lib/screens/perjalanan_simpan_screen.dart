import 'package:flutter/material.dart';
import 'package:wtravel_app/screens/perjalanan_koleksi_screen.dart';
import 'package:wtravel_app/widgets/button_navbar.dart';

class PerjalananSimpan extends StatelessWidget {
  const PerjalananSimpan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F3F5),
      appBar: AppBar(
        title: const Text(
          'Perjalanan',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 15),
            SizedBox(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const PerjalananKoleksi();
                        }),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10, left: 15),
                          child: Image.asset(
                              'assets/icons/perjalanan-koleksi-grey.png'),
                        ),
                        const Text(
                          'Koleksi',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xFFC2C5D6)),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10, left: 30),
                            child: Image.asset(
                                'assets/icons/perjalanan-simpan-blue.png'),
                          ),
                          const Text(
                            'Simpan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xFF140C47)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Container(
                        margin: const EdgeInsets.only(left: 27),
                        height: 3,
                        width: 97,
                        decoration: const BoxDecoration(
                          color: Color(0xFF140C47),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15, right: 10),
                      width: 180.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                'assets/images/panduan-card-pilihan-bajo.png',
                                height: 89,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: const Text(
                                  'Bromo',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/icons/perjalanan-simpan-location.png',
                                        ),
                                        const Text(
                                          'Jawa Timur',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFCACACA)),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15, right: 10),
                                      width: 45.0,
                                      height: 25.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: const Color(0xFF4D5652),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/icons/perjalanan-simpan-bintang.png',
                                            height: 12, // Adjusted height
                                            width: 12, // Adjusted width
                                            fit: BoxFit.contain,
                                          ),
                                          const SizedBox(
                                              width:
                                                  3), // Add some spacing between the image and text
                                          const Text('4,5',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      width: 180.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                'assets/images/panduan-card-pilihan-bajo.png',
                                height: 89,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: const Text(
                                  'Bromo',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/icons/perjalanan-simpan-location.png',
                                        ),
                                        const Text(
                                          'Jawa Timur',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFCACACA)),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15, right: 10),
                                      width: 45.0,
                                      height: 25.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: const Color(0xFF4D5652),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/icons/perjalanan-simpan-bintang.png',
                                            height: 12, // Adjusted height
                                            width: 12, // Adjusted width
                                            fit: BoxFit.contain,
                                          ),
                                          const SizedBox(
                                              width:
                                                  3), // Add some spacing between the image and text
                                          const Text('4,5',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15, right: 10),
                      width: 180.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                'assets/images/panduan-card-pilihan-bajo.png',
                                height: 89,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: const Text(
                                  'Bromo',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/icons/perjalanan-simpan-location.png',
                                        ),
                                        const Text(
                                          'Jawa Timur',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFCACACA)),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15, right: 10),
                                      width: 45.0,
                                      height: 25.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: const Color(0xFF4D5652),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/icons/perjalanan-simpan-bintang.png',
                                            height: 12, // Adjusted height
                                            width: 12, // Adjusted width
                                            fit: BoxFit.contain,
                                          ),
                                          const SizedBox(
                                              width:
                                                  3), // Add some spacing between the image and text
                                          const Text('4,5',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      width: 180.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                'assets/images/panduan-card-pilihan-bajo.png',
                                height: 89,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: const Text(
                                  'Bromo',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/icons/perjalanan-simpan-location.png',
                                        ),
                                        const Text(
                                          'Jawa Timur',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFCACACA)),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15, right: 10),
                                      width: 45.0,
                                      height: 25.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: const Color(0xFF4D5652),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/icons/perjalanan-simpan-bintang.png',
                                            height: 12, // Adjusted height
                                            width: 12, // Adjusted width
                                            fit: BoxFit.contain,
                                          ),
                                          const SizedBox(
                                              width:
                                                  3), // Add some spacing between the image and text
                                          const Text('4,5',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          const ButtonNavBar(selectedMenu: MenuState.perjalanan),
    );
  }
}
