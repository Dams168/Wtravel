class Article {
  String title;
  String summary;
  String report;
  String imageAsset;
  List<String> imageUrls;

  Article({
    required this.title,
    required this.summary,
    required this.report,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var articleList = [
  Article(
    summary:
        'Liburan Hemat Labuan Bajo \nLabuan Bajo menjadi salah satu primadona pariwisata Indonesia',
    title: 'Ini Dia, Jurus Liburan Hemat ke Labuan Bajo!',
    report: '1. Ajak Dua atau Lebih Temanmu\n\n'
        'Untuk menghemat biaya perjalanan, salah satu cara yang bisa ditempuh adalah pergi bersama lebih dari dua orang teman. Transportasi antarpulau di Labuan Bajo yang menggunakan kapal akan lebih murah jika Anda pergi secara rombongan daripada sendirian. Selain bisa berbagi biaya sewa kapal, Anda juga bisa berbagi biaya sewa hotel.\n\nTentu perlu diingat, rombongan yang terlalu besar pun bisa membatasi perjalanan Anda karena belum tentu seluruh peserta memiliki keinginan yang sama.\n\n'
        '2. Sewa Kapal dari Pemilik Kapal bukan Agen\n\n'
        'Menikmati Labuan Bajo dari kapal menjadi pengalaman berkesan yang tak terlupakan. Sangat banyak agen perjalanan yang menawarkan paket-paket trip sailing. Namun, jika hendak menghemat biaya perjalanan, sebaiknya Anda menyewa kapal dari pemiliknya langsung.\n\nUntuk menyewa kapal sendiri, Anda bisa pergi ke Jalan Soekarno Hatta, tepatnya ke Pelabuhan Pelni. Anda pun dapat bernegosiasi dengan pemilik kapal untuk mendapatkan harga yang cocok.\n\n'
        '3. Gunakan Bandara Bayangan\n\n'
        'Meski terdapat Bandara Internasional Komodo sebagai salah satu pintu masuk Labuan Bajo, Anda juga bisa mengakalinya dengan memilih bandara bayangan untuk menghemat biaya perjalanan. Yang dimaksud dengan bandara bayangan adalah bandara-bandara lain di sekitar Labuan Bajo yang lebih besar atau bisa dibilang, lebih sibuk.\n\nBiasanya, bandara yang lebih sibuk memiliki lebih banyak jadwal perjalanan serta maskapai, sehingga harga yang ditawarkan pun menjadi cukup kompetitif.\n\nContohnya, harga tiket penerbangan Jakarta – Labuan Bajo biasanya berkisar antara Rp 3.000.000 untuk perjalanan pulang pergi. Jadwal rute penerbangan ini pun cukup terbatas.\n\nOleh karena itu, kenapa tidak terbang ke Bali maupun Lombok lalu melanjutkan perjalanan dengan kapal feri? Setelah sampai di NTT, Anda bisa melanjutkan perjalanan dengan bus Damri dan menyambung lagi dengan kapal feri.\n\n'
        'Namun, perlu diingat bahwa perjalanan dengan bandara bayangan ini bisa jadi membutuhkan lebih banyak waktu dan tenaga. Jika Anda merasa sanggup, tidak ada salahnya mencoba bukan?\n\n'
        '4. Cari Tiket Promo Pesawat yang Murah\n\n'
        'Biasanya, tiket pesawat dengan harga terendah bisa didapatkan saat low season, seperti seminggu setelah liburan tahun baru.\n\nNamun, jangan khawatir jika Anda ingin mengunjungi Labuan Bajo di waktu lainnya karena Traveloka siap membantu Anda berburu tiket dengan harga terjangkau di waktu-waktu yang Anda inginkan. Untuk mencegah naiknya harga tiket menjadi lebih tinggi, ada baiknya Anda mulai berburu tiket jauh-jauh hari sebelumnya.',
    imageAsset: 'assets/images/labuanBajo.png',
    imageUrls: [
      'https://awsimages.detik.net.id/community/media/visual/2021/07/05/wisata-super-prioritas-labuan-bajo_169.jpeg?w=600&q=90',
    ],
  ),
  Article(
    summary:
        'Menjelajahi Keindahan Pulau Nusa Penida \nPulau eksotis ini menyajikan pesona alam yang luar biasa, patut dikunjungi bagi pecinta petualangan.',
    title: 'Eksplorasi Ajaib Nusa Penida: Surga Tersembunyi di Timur Bali',
    report: '1. Jelajahi Pantai-Pantai Memukau\n\n'
        'Pantai-pantai di Nusa Penida menghadirkan keindahan alam yang menakjubkan. Crystal Bay, Kelingking Beach, dan Atuh Beach adalah destinasi imperdible yang menawarkan pasir putih dan air laut kristal jernih.\n\n'
        '2. Petualangan Ke Surga Biru\n\n'
        'Snorkeling dan diving di sekitar Nusa Penida adalah pengalaman tak terlupakan. Menyaksikan kehidupan bawah laut yang kaya warna dan ragam spesies laut di sekitar Blue Hole dan Manta Point.\n\n'
        '3. Keajaiban Alam Angels Billabong dan Broken Beach\n\n'
        'Jangan lewatkan Angels Billabong dan Broken Beach, dua situs alam yang memukau. Formasi batu unik dan air laut yang tenang menciptakan pemandangan yang sangat fotogenik.\n\n'
        '4. Kunjungi Pura-Pura Bersejarah\n\n'
        'Eksplorasi kebudayaan Nusa Penida dengan mengunjungi Pura Goa Giri Putri, salah satu pura bersejarah di pulau ini. Dengan suasana mistis dan arsitektur unik, pura ini menjadi tempat yang menarik untuk dikunjungi.\n\n'
        'Jangan lupa membawa perlengkapan fotografi untuk mengabadikan momen tak terlupakan di pulau ini.',
    imageAsset: 'assets/images/nusapenida.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/f5/3e/e5/nusa-penida-island.jpg?w=1200&h=-1&s=1',
    ],
  ),
  Article(
    summary:
        'Mengenal Keindahan Danau Toba \nDanau terbesar di Indonesia ini menawarkan panorama alam yang memesona, memberikan pengalaman wisata yang tak terlupakan.',
    title: 'Pesona Keindahan Danau Toba: Surga Wisata di Tengah Sumatera',
    report: '1. Menikmati Keindahan Alam Danau Toba\n\n'
        'Dengan pemandangan yang menakjubkan, Danau Toba menjadi destinasi idaman para wisatawan. Panorama gunung, pulau Samosir, dan danau yang luas menciptakan pengalaman yang tak terlupakan.\n\n'
        '2. Eksplorasi Kepulauan Samosir\n\n'
        'Samosir, pulau di tengah Danau Toba, memiliki kebudayaan Batak yang khas. Jelajahi desa-desa tradisional, kunjungi makam raja-raja Batak, dan nikmati seni dan budaya lokal.\n\n'
        '3. Wisata Kuliner Khas Batak\n\n'
        'Cicipi kuliner khas Batak, seperti naniura (ikan fermentasi), saksang (masakan berbahan dasar daging), dan ulos (kain tenun khas Batak). Pengalaman kuliner ini akan membuat perjalanan Anda semakin berkesan.\n\n'
        '4. Pusat Kerajinan Handmade\n\n'
        'Jangan lewatkan kesempatan untuk berbelanja oleh-oleh khas Danau Toba. Pusat kerajinan di sekitar danau menawarkan berbagai produk handmade, termasuk tenun ulos, patung kayu, dan perhiasan etnik.\n\n'
        'Dengan keindahan alam dan keberagaman budaya, Danau Toba menjadi destinasi wisata yang mengesankan di Pulau Sumatera.',
    imageAsset: 'assets/images/danautoba.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/02/7f/ef/we-provide-lake-toba.jpg?w=800&h=-1&s=1',
    ],
  ),
  Article(
    summary:
        'Menjelajahi Pesona Candi Borobudur \nCandi megah ini menyimpan sejarah dan keindahan arsitektur yang memukau, menjadi destinasi wisata budaya yang terkenal.',
    title:
        'Eksplorasi Keagungan Candi Borobudur: Wisata Spiritual di Jantung Jawa',
    report: '1. Keajaiban Arsitektur Budha\n\n'
        'Candi Borobudur, keajaiban arsitektur budha abad ke-9, menawarkan pesona spiritual dan sejarah. Explore relief-relief yang menceritakan kehidupan Buddha dan nikmati panorama sekitar dari puncak candi.\n\n'
        '2. Sunrise Magis di Borobudur\n\n'
        'Saksikan keindahan matahari terbit di Candi Borobudur. Pengalaman sunrise di tempat ini memberikan nuansa magis dan memukau, menjadi momen yang tidak boleh dilewatkan.\n\n'
        '3. Eksplorasi Cagar Budaya Prambanan\n\n'
        'Jangan lupakan kunjungan ke Candi Prambanan yang berdekatan. Candi Hindu ini juga mempesona dengan arsitektur yang megah. Jelajahi kompleks candi dan nikmati keindahan patung dan relief.\n\n'
        '4. Aktivitas Spiritual dan Budaya\n\n'
        'Selain sebagai destinasi wisata, Candi Borobudur juga sering digunakan untuk kegiatan spiritual. Acara persembahyangan dan festival budaya sering diadakan di tempat ini, memberikan pengalaman wisata yang lebih mendalam.\n\n'
        'Dengan keindahan seni dan kearifan lokal yang terpancar dari setiap reliefnya, Candi Borobudur tetap menjadi destinasi wisata budaya yang menakjubkan.',
    imageAsset: 'assets/images/borobudur.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/ef/47/1c/borobudur-temple.jpg?w=1200&h=-1&s=1',
    ],
  ),
  Article(
    summary:
        'Melihat Keunikan Gunung Padang \nSitus megalitikum ini menyimpan misteri sejarah prasejarah, menawarkan petualangan arkeologi yang menarik.',
    title:
        'Misteri Gunung Padang: Menyingkap Keunikan Situs Megalitikum di Jawa Barat',
    report: '1. Peninggalan Prasejarah\n\n'
        'Gunung Padang, situs megalitikum di Jawa Barat, adalah salah satu peninggalan prasejarah yang menarik perhatian para arkeolog. Temuan-temuan seperti batu-batu berukir dan struktur piramida tua menjadi misteri yang belum terpecahkan.\n\n'
        '2. Petualangan Arkeologi\n\n'
        'Jelajahi area sekitar Gunung Padang dan temukan artefak-artefak bersejarah yang dapat memberikan petunjuk tentang peradaban kuno di Indonesia. Petualangan arkeologi ini akan memikat para penggemar sejarah.\n\n'
        '3. Pemandangan Alam yang Indah\n\n'
        'Selain keunikan arkeologisnya, Gunung Padang juga menawarkan pemandangan alam yang indah. Terletak di dataran tinggi, situs ini memberikan panorama yang memukau.\n\n'
        '4. Tempat Studi dan Penelitian\n\n'
        'Bagi para peneliti dan akademisi, Gunung Padang menjadi tempat studi yang menarik. Dengan berbagai teori tentang fungsi dan asal-usulnya, situs ini terus menjadi fokus penelitian ilmiah.\n\n'
        'Dengan keunikan sejarah dan pesona alamnya, Gunung Padang adalah destinasi yang unik dan memikat untuk dikunjungi.',
    imageAsset: 'assets/images/gunungpadang.jpeg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/07/fe/e0/king-s-resting-stones.jpg?w=1200&h=-1&s=1',
    ],
  ),
];
