import 'package:flutter/material.dart';

class DetailKoleksi extends StatelessWidget {
  const DetailKoleksi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F3F5),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gunung',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF140C47)),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Color(0xFF140C47),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                            'assets/images/detail-koleksi-backgroud.jpg',
                            height: 150,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width),
                      )),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.account_balance_wallet,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Total yang harus di keluarkan',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'Rp. 450.000,00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, top: 3, bottom: 10),
                            height: 1.5,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          const Text(
                            'Wed, 29 Dec - 31 Dec 2023',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        child: Image.asset(
                          'assets/images/bromo.jpg',
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
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/perjalanan-simpan-location.png',
                                      ),
                                      const SizedBox(width: 3),
                                      const Text(
                                        'Jawa Timur',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF140C47)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 100),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 15, right: 10),
                                    width: 45.0,
                                    height: 25.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
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
                              ),
                            ],
                          ),
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        child: Image.asset(
                          'assets/images/komodoisland.jpg',
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
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/perjalanan-simpan-location.png',
                                      ),
                                      const SizedBox(width: 3),
                                      const Text(
                                        'Nusa Tenggara Timur',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF140C47)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 55),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 15, right: 10),
                                    width: 45.0,
                                    height: 25.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
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
                                        const Text('4,7',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ),
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
