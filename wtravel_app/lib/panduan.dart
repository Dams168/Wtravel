import 'package:flutter/material.dart';

class Panduan extends StatelessWidget {
  const Panduan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F3F5),
      appBar: AppBar(
        title: const Text('Panduan',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                const SizedBox(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1),
                        ),
                        hintText: 'Cari Sesuatu',
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                  'assets/icons/panduan-kategori-pantai.png'),
                              const SizedBox(width: 5),
                              const Text(
                                'Pantai',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                  'assets/icons/panduan-kategori-gunung.png'),
                              const SizedBox(width: 5),
                              const Text(
                                'Gunung',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                  'assets/icons/panduan-kategori-atraksi.png'),
                              const SizedBox(width: 5),
                              const Text(
                                'Atraksi',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text('Artikel Pilihan Teratas'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 140.0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: 150.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                                child: Image.asset(
                                  'assets/images/panduan-card-pilihan-bajo.png',
                                  height: 90,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'TIPS',
                                      style: TextStyle(
                                          fontSize: 8.0, color: Colors.blue),
                                    ),
                                    Text(
                                      'Ini Dia, Jurus Liburan Hemat ke Labuan Bajo!',
                                      style: TextStyle(
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: 150.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                                child: Image.asset(
                                  'assets/images/panduan-card-pilihan-bajo.png',
                                  height: 90,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'TIPS',
                                      style: TextStyle(
                                          fontSize: 8.0, color: Colors.blue),
                                    ),
                                    Text(
                                      'Ini Dia, Jurus Liburan Hemat ke Labuan Bajo!',
                                      style: TextStyle(
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: 150.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                                child: Image.asset(
                                  'assets/images/panduan-card-pilihan-bajo.png',
                                  height: 90,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'TIPS',
                                      style: TextStyle(
                                          fontSize: 8.0, color: Colors.blue),
                                    ),
                                    Text(
                                      'Ini Dia, Jurus Liburan Hemat ke Labuan Bajo!',
                                      style: TextStyle(
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text('Artikel Terbaru'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 105,
                        margin: const EdgeInsets.symmetric(horizontal: 15.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ini Dia, Jurus Liburan Hemat ke Labun Bajo !',
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Liburan Hemat Labuan Bajo- Labuan Bajo menjadi salah satu primadona pariwisata Indonesia yang ...',
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Sahabat Travel',
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          '3 min read',
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(13.0),
                                child: Image.asset(
                                  'assets/images/panduan-card-pilihan-bajo.png',
                                  height: 93,
                                  width: 105,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 105,
                        margin: const EdgeInsets.symmetric(horizontal: 15.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ini Dia, Jurus Liburan Hemat ke Labun Bajo !',
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Liburan Hemat Labuan Bajo- Labuan Bajo menjadi salah satu primadona pariwisata Indonesia yang ...',
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Sahabat Travel',
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          '3 min read',
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(13.0),
                                child: Image.asset(
                                  'assets/images/panduan-card-pilihan-bajo.png',
                                  height: 93,
                                  width: 105,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 105,
                        margin: const EdgeInsets.symmetric(horizontal: 15.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ini Dia, Jurus Liburan Hemat ke Labun Bajo !',
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Liburan Hemat Labuan Bajo- Labuan Bajo menjadi salah satu primadona pariwisata Indonesia yang ...',
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Sahabat Travel',
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          '3 min read',
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(13.0),
                                child: Image.asset(
                                  'assets/images/panduan-card-pilihan-bajo.png',
                                  height: 93,
                                  width: 105,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 105,
                        margin: const EdgeInsets.symmetric(horizontal: 15.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ini Dia, Jurus Liburan Hemat ke Labun Bajo !',
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Liburan Hemat Labuan Bajo- Labuan Bajo menjadi salah satu primadona pariwisata Indonesia yang ...',
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Sahabat Travel',
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          '3 min read',
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(13.0),
                                child: Image.asset(
                                  'assets/images/panduan-card-pilihan-bajo.png',
                                  height: 93,
                                  width: 105,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
