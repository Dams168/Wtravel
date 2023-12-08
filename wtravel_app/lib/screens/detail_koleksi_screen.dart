import 'package:flutter/material.dart';
import 'package:wtravel_app/size_config.dart';

class DetailKoleksi extends StatelessWidget {
  const DetailKoleksi({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF0F3F5),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 45),
              child: const Text(
                'Gunung',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF140C47),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: SizeConfig.screenHeight * 0.4,
                    width: SizeConfig.screenWidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFF140C47),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/images/detail-koleksi-backgroud.jpg',
                        height: SizeConfig.screenHeight * 0.4,
                        fit: BoxFit.cover,
                        width: SizeConfig.screenWidth,
                      ),
                    ),
                  ),
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
                                'Total yang harus dibayar',
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
                              fontSize: 24,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, top: 3, bottom: 10),
                            height: 1.5,
                            width: SizeConfig.screenWidth,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          const Text(
                            'Wed, 29 Dec - 31 Dec 2023',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
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
              buildPlaceContainer(
                imageAsset: 'assets/images/bromo.jpg',
                name: 'Bromo',
                location: 'Jawa Timur',
                rating: '4.5',
                price: 'Rp 300.000',
              ),
              const SizedBox(height: 10),
              buildPlaceContainer(
                imageAsset: 'assets/images/komodoisland.jpg',
                name: 'Pulau Komodo',
                location: 'Nusa Tenggara Timur',
                rating: '4.7',
                price: 'Rp 150.000',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPlaceContainer({
    required String imageAsset,
    required String name,
    required String location,
    required String rating,
    required String price,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: SizeConfig.screenHeight * 0.4,
      width: SizeConfig.screenWidth,
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              child: Image.asset(
                imageAsset,
                height: SizeConfig.screenHeight * 0.2,
                width: SizeConfig.screenWidth * 0.4,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Bromo',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
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
                              color: Color(0xFF140C47),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        margin: const EdgeInsets.only(left: 5, right: 5),
                        width: 45.0,
                        height: 25.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: const Color(0xFF4D5652),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/perjalanan-simpan-bintang.png',
                              height: 12,
                              width: 12,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(width: 3),
                            Text(
                              rating,
                              style: const TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                          color: Color(0xFF140C47),
                          fontSize: 10,
                        ),
                      ),
                      const Text(
                        '/orang',
                        style: TextStyle(
                          color: Color(0xFFCACACA),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
