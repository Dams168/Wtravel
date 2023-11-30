class TourismPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Pulau Komodo',
    location: 'Nusa Tenggara Timur',
    description:
        'Pulau Komodo menjadi rumah bagi Komodo, kadal terbesar di Bumi. Pulau ini juga dikenal dengan pemandangan indahnya, terumbu karang, dan pantai berpasir merah. Keindahan alamnya menarik wisatawan untuk menjelajahi keanekaragaman hayati dan keunikan pulau ini.',
    openDays: 'Buka Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Bervariasi',
    imageAsset: 'assets/images/komodoisland.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/37/06/e4/caption.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/0d/5b/a3/caption.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/f7/3a/2a/photo1jpg.jpg?w=1100&h=-1&s=1',
    ],
  ),
  TourismPlace(
    name: 'Nusa Penida',
    location: 'Bali',
    description:
        'Nusa Penida adalah pulau kecil di sebelah tenggara Bali yang terkenal dengan pantai-pantainya yang eksotis, terumbu karang, dan pemandangan alam yang menakjubkan. Jelajahi keindahan tebing tebingnya, air terjun yang tersembunyi, dan nuansa keasrian alam yang sulit ditandingi.',
    openDays: 'Buka Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Bervariasi',
    imageAsset: 'assets/images/nusapenida.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/45/64/8b/photo0jpg.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/be/aa/19/photo1jpg.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/c7/af/53/photo5jpg.jpg?w=1200&h=-1&s=1',
    ],
  ),
  TourismPlace(
    name: 'Gunung Bromo',
    location: 'Jawa Timur',
    description:
        'Gunung Bromo adalah salah satu gunung berapi yang paling terkenal di Indonesia, terkenal dengan kawahnya yang spektakuler dan lanskap pegunungan yang menakjubkan. Rasakan petualangan mendaki ke puncak dan nikmati pemandangan matahari terbit yang memukau.',
    openDays: 'Buka Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Bervariasi',
    imageAsset: 'assets/images/bromo.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/a5/28/9e/photo0jpg.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-s/01/ea/fd/cb/smoking-bromo.jpg?w=600&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/cc/86/cc/mount-bromo.jpg?w=1200&h=-1&s=1',
    ],
  ),
  TourismPlace(
    name: 'Gunung Gede',
    location: 'Jawa Barat',
    description:
        'Gunung Gede adalah salah satu gunung tertinggi di Jawa Barat. Lokasi ini populer di kalangan pendaki gunung dan menawarkan pemandangan alam yang menakjubkan. Rintislah pendakian Anda dan rasakan kepuasan mencapai puncak yang memukau.',
    openDays: 'Buka Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Bervariasi',
    imageAsset: 'assets/images/gunung-gede.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/5e/31/a4/gede-ctarer.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/34/f1/2f/taman-nasional-gunung.jpg?w=900&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/f6/39/b9/taman-nasional-gunung.jpg?w=1200&h=-1&s=1',
    ],
  ),
  TourismPlace(
    name: 'Taman Nasional Cibodas',
    location: 'Jawa Barat',
    description:
        'Taman Nasional Cibodas adalah salah satu taman nasional di Indonesia. Terletak di Jawa Barat, taman ini terkenal dengan keindahan alamnya, termasuk flora dan fauna yang unik. Jelajahi keasrian alam dan nikmati keindahan taman yang memikat hati.',
    openDays: 'Buka Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Bervariasi',
    imageAsset: 'assets/images/kebun-raya-cibodas.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/9a/12/26/water-pond.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/9a/12/17/guest-house.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/8a/58/d9/taman-sakura.jpg?w=1200&h=-1&s=1',
    ],
  ),
];
