import 'package:flutter/material.dart';

class DetailArtikel extends StatelessWidget {
  const DetailArtikel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F3F5),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 5.0),
              child: Image.asset(
                'assets/icons/artikel-appbar-logo.png',
              ),
            ),
            const Text(
              'WTravel Guide',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              // Atur tinggi sesuai kebutuhan
              child: Image.asset(
                'assets/images/labuan_bajo_artikel.jpg',
                width: double.infinity, // Atur lebar sesuai kebutuhan
                height: 250.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            'Ini Dia, Jurus Liburan Hemat ke Labun Bajo !',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                            maxLines:
                                3, // Jumlah maksimum baris, sesuaikan sesuai kebutuhan
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          '3 days ago',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '3 min',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.bookmark,
                          size: 20,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            '1. Ajak Dua atau Lebih Temanmu\n\n'
                            'Untuk menghemat biaya perjalanan, salah satu cara yang bisa ditempuh adalah pergi bersama lebih dari dua orang teman. Transportasi antarpulau di Labuan Bajo yang menggunakan kapal akan lebih murah jika Anda pergi secara rombongan daripada sendirian. Selain bisa berbagi biaya sewa kapal, Anda juga bisa berbagi biaya sewa hotel.\n\nTentu perlu diingat, rombongan yang terlalu besar pun bisa membatasi perjalanan Anda karena belum tentu seluruh peserta memiliki keinginan yang sama.\n\n'
                            '2. Sewa Kapal dari Pemilik Kapal bukan Agen\n\n'
                            'Menikmati Labuan Bajo dari kapal menjadi pengalaman berkesan yang tak terlupakan. Sangat banyak agen perjalanan yang menawarkan paket-paket trip sailing. Namun, jika hendak menghemat biaya perjalanan, sebaiknya Anda menyewa kapal dari pemiliknya langsung.\n\nUntuk menyewa kapal sendiri, Anda bisa pergi ke Jalan Soekarno Hatta, tepatnya ke Pelabuhan Pelni. Anda pun dapat bernegosiasi dengan pemilik kapal untuk mendapatkan harga yang cocok.\n\n'
                            '3. Gunakan Bandara Bayangan\n\n'
                            'Meski terdapat Bandara Internasional Komodo sebagai salah satu pintu masuk Labuan Bajo, Anda juga bisa mengakalinya dengan memilih bandara bayangan untuk menghemat biaya perjalanan. Yang dimaksud dengan bandara bayangan adalah bandara-bandara lain di sekitar Labuan Bajo yang lebih besar atau bisa dibilang, lebih sibuk.\n\nBiasanya, bandara yang lebih sibuk memiliki lebih banyak jadwal perjalanan serta maskapai, sehingga harga yang ditawarkan pun menjadi cukup kompetitif.\n\nContohnya, harga tiket penerbangan Jakarta – Labuan Bajo biasanya berkisar antara Rp 3.000.000 untuk perjalanan pulang pergi. Jadwal rute penerbangan ini pun cukup terbatas.\n\nOleh karena itu, kenapa tidak terbang ke Bali maupun Lombok lalu melanjutkan perjalanan dengan kapal feri? Setelah sampai di NTT, Anda bisa melanjutkan perjalanan dengan bus Damri dan menyambung lagi dengan kapal feri.\n\n'
                            'Namun, perlu diingat bahwa perjalanan dengan bandara bayangan ini bisa jadi membutuhkan lebih banyak waktu dan tenaga. Jika Anda merasa sanggup, tidak ada salahnya mencoba bukan?\n\n'
                            '4. Cari Tiket Promo Pesawat yang Murah\n\n'
                            'Biasanya, tiket pesawat dengan harga terendah bisa didapatkan saat low season, seperti seminggu setelah liburan tahun baru.\n\nNamun, jangan khawatir jika Anda ingin mengunjungi Labuan Bajo di waktu lainnya karena Traveloka siap membantu Anda berburu tiket dengan harga terjangkau di waktu-waktu yang Anda inginkan. Untuk mencegah naiknya harga tiket menjadi lebih tinggi, ada baiknya Anda mulai berburu tiket jauh-jauh hari sebelumnya.',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0,
                            ),
                            maxLines:
                                150, // Jumlah maksimum baris, sesuaikan sesuai kebutuhan
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
