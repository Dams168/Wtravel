class TourismPlace {
  String name;
  String location;
  String description;
  String category;
  String openDays;
  String openTime;
  String ticketPrice;
  String rating;
  String imageAsset;
  List<String> imageUrls;
  List<TourismReview> reviews;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.category,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.rating,
    required this.imageAsset,
    required this.imageUrls,
    required this.reviews,
  });
}

class TourismReview {
  String reviewerName;
  String reviewerPhoto;
  String reviewHeader;
  String reviewText;
  String reviewDate;

  TourismReview({
    required this.reviewerName,
    required this.reviewerPhoto,
    required this.reviewHeader,
    required this.reviewText,
    required this.reviewDate,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Pulau Komodo',
    location: 'NTT',
    description:
        'Pulau Komodo menjadi rumah bagi Komodo, kadal terbesar di Bumi. Pulau ini juga dikenal dengan pemandangan indahnya, terumbu karang, dan pantai berpasir merah. Keindahan alamnya menarik wisatawan untuk menjelajahi keanekaragaman hayati dan keunikan pulau ini.',
    category: 'Pantai',
    openDays: 'Buka',
    openTime: '24 Jam',
    ticketPrice: '300.000',
    rating: '4.8',
    imageAsset: 'assets/images/komodoisland.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/37/06/e4/caption.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/0d/5b/a3/caption.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/f7/3a/2a/photo1jpg.jpg?w=1100&h=-1&s=1',
    ],
    reviews: [
      TourismReview(
        reviewerName: 'Alice Johnson',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'Awe-inspiring Experience!',
        reviewText:
            'Visited Pulau Komodo last month and it was a truly magical experience. The Komodo dragons were fascinating, and the landscapes were breathtaking. Highly recommended!',
        reviewDate: '2023-03-10',
      ),
      TourismReview(
        reviewerName: 'Bob Smith',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Incredible Scuba Diving',
        reviewText:
            'The coral reefs around Pulau Komodo are a scuba diver\'s paradise. I had the chance to explore the underwater world, and it was an unforgettable adventure. Loved every moment!',
        reviewDate: '2023-02-22',
      ),
      TourismReview(
        reviewerName: 'Eva Martinez',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'Spectacular Sunsets',
        reviewText:
            'The sunsets at Pulau Komodo are absolutely spectacular. The colors of the sky reflecting on the water create a mesmerizing view. Don\'t miss the evening scenes!',
        reviewDate: '2023-01-15',
      ),
    ],
  ),
  TourismPlace(
    name: 'Nusa Penida',
    location: 'Bali',
    description:
        'Nusa Penida adalah pulau kecil di sebelah tenggara Bali yang terkenal dengan pantai-pantainya yang eksotis, terumbu karang, dan pemandangan alam yang menakjubkan. Jelajahi keindahan tebing tebingnya, air terjun yang tersembunyi, dan nuansa keasrian alam yang sulit ditandingi.',
    category: 'Pantai',
    openDays: 'Buka',
    openTime: '24 Jam',
    ticketPrice: '300.000',
    rating: '4.9',
    imageAsset: 'assets/images/nusapenida.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/45/64/8b/photo0jpg.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/be/aa/19/photo1jpg.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/c7/af/53/photo5jpg.jpg?w=1200&h=-1&s=1',
    ],
    reviews: [
      TourismReview(
        reviewerName: 'David Brown',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Hidden Gems Everywhere',
        reviewText:
            'Nusa Penida is a hidden gem with its secluded beaches and stunning natural beauty. The cliffs and waterfalls are unlike anything I\'ve seen before. Truly a paradise!',
        reviewDate: '2023-03-05',
      ),
      TourismReview(
        reviewerName: 'Sophie Miller',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'Adventurous Trails',
        reviewText:
            'Explored the adventurous trails of Nusa Penida and was rewarded with breathtaking views at every turn. It\'s a paradise for nature lovers and adventure seekers!',
        reviewDate: '2023-02-18',
      ),
      TourismReview(
        reviewerName: 'Charlie Davis',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Crystal Clear Waters',
        reviewText:
            'The crystal-clear waters surrounding Nusa Penida are perfect for snorkeling. I encountered vibrant marine life and colorful coral reefs. An unforgettable underwater experience!',
        reviewDate: '2023-01-25',
      ),
    ],
  ),
  TourismPlace(
    name: 'Gunung Bromo',
    location: 'Jawa Timur',
    description:
        'Gunung Bromo adalah salah satu gunung berapi yang paling terkenal di Indonesia, terkenal dengan kawahnya yang spektakuler dan lanskap pegunungan yang menakjubkan. Rasakan petualangan mendaki ke puncak dan nikmati pemandangan matahari terbit yang memukau.',
    category: 'Gunung',
    openDays: 'Buka',
    openTime: '24 Jam',
    ticketPrice: '300.000',
    rating: '4.7',
    imageAsset: 'assets/images/bromo.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/a5/28/9e/photo0jpg.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-s/01/ea/fd/cb/smoking-bromo.jpg?w=600&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/cc/86/cc/mount-bromo.jpg?w=1200&h=-1&s=1',
    ],
    reviews: [
      TourismReview(
        reviewerName: 'Emily White',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'Breathtaking Sunrise',
        reviewText:
            'Climbed Gunung Bromo to witness the sunrise, and it was absolutely breathtaking. The sea of clouds and the view of the smoking crater are surreal. A must-visit for nature enthusiasts!',
        reviewDate: '2023-03-08',
      ),
      TourismReview(
        reviewerName: 'Jake Turner',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Lunar-Like Landscape',
        reviewText:
            'The lunar-like landscape around Gunung Bromo is surreal and otherworldly. The vast expanse and the volcanic activity make it a unique destination. Truly a one-of-a-kind experience!',
        reviewDate: '2023-02-20',
      ),
      TourismReview(
        reviewerName: 'Olivia Harris',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'Adventure of a Lifetime',
        reviewText:
            'Embarked on an adventure of a lifetime exploring the trails around Gunung Bromo. The landscapes are ever-changing and keep you captivated. Highly recommend for adventure seekers!',
        reviewDate: '2023-01-12',
      ),
    ],
  ),
  TourismPlace(
    name: 'Gunung Gede',
    location: 'Jawa Barat',
    description:
        'Gunung Gede adalah salah satu gunung tertinggi di Jawa Barat. Lokasi ini populer di kalangan pendaki gunung dan menawarkan pemandangan alam yang menakjubkan. Rintislah pendakian Anda dan rasakan kepuasan mencapai puncak yang memukau.',
    category: 'Gunung',
    openDays: 'Buka',
    openTime: '24 Jam',
    ticketPrice: '300.000',
    rating: '5.0',
    imageAsset: 'assets/images/gunung-gede.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/5e/31/a4/gede-ctarer.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/34/f1/2f/taman-nasional-gunung.jpg?w=900&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/f6/39/b9/taman-nasional-gunung.jpg?w=1200&h=-1&s=1',
    ],
    reviews: [
      TourismReview(
        reviewerName: 'Daniel Rodriguez',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Majestic Summit',
        reviewText:
            'Reached the majestic summit of Gunung Gede, and the panoramic views were absolutely worth the climb. The sense of accomplishment and the beauty of nature make it an unforgettable journey.',
        reviewDate: '2023-03-03',
      ),
      TourismReview(
        reviewerName: 'Mia Lee',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'Enchanting Flora and Fauna',
        reviewText:
            'The trails of Gunung Gede are filled with enchanting flora and fauna. It\'s a haven for nature lovers, and the biodiversity is astounding. A perfect escape into the wilderness!',
        reviewDate: '2023-02-15',
      ),
      TourismReview(
        reviewerName: 'Jack Robinson',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Peaceful Serenity',
        reviewText:
            'Experienced the peaceful serenity of Gunung Gede. The tranquility at the summit is unmatched, and the cool mountain breeze is rejuvenating. A perfect getaway from the hustle and bustle!',
        reviewDate: '2023-01-28',
      ),
    ],
  ),
  TourismPlace(
    name: 'Taman Nasional Cibodas',
    location: 'Jawa Barat',
    description:
        'Taman Nasional Cibodas adalah salah satu taman nasional di Indonesia. Terletak di Jawa Barat, taman ini terkenal dengan keindahan alamnya, termasuk flora dan fauna yang unik. Jelajahi keasrian alam dan nikmati keindahan taman yang memikat hati.',
    category: 'Gunung',
    openDays: 'Buka',
    openTime: '24 Jam',
    ticketPrice: '300.000',
    rating: '4.5',
    imageAsset: 'assets/images/kebun-raya-cibodas.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/9a/12/26/water-pond.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/9a/12/17/guest-house.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/8a/58/d9/taman-sakura.jpg?w=1200&h=-1&s=1',
    ],
    reviews: [
      TourismReview(
        reviewerName: 'Isabella Clark',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'Botanical Paradise',
        reviewText:
            'Taman Nasional Cibodas is a botanical paradise with its unique flora and fauna. The variety of plants and the well-maintained gardens make it a haven for botany enthusiasts. Loved every moment!',
        reviewDate: '2023-03-01',
      ),
      TourismReview(
        reviewerName: 'Alex Turner',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Relaxing Nature Walks',
        reviewText:
            'Enjoyed relaxing nature walks in Taman Nasional Cibodas. The scenic beauty and the calming atmosphere are perfect for a leisurely stroll. A great escape into nature!',
        reviewDate: '2023-02-10',
      ),
      TourismReview(
        reviewerName: 'Sophia Martin',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'Picturesque Water Pond',
        reviewText:
            'The picturesque water pond in Taman Nasional Cibodas adds to the charm of the place. It\'s a perfect spot for reflection and enjoying the serenity of nature. Highly recommended!',
        reviewDate: '2023-01-20',
      ),
    ],
  ),
  TourismPlace(
    name: 'Pulau Bunaken',
    location: 'Sulawesi Utara',
    description:
        'Pulau Bunaken terkenal dengan keindahan bawah lautnya yang luar biasa. Destinasi ini menjadi surga bagi penyelam dengan terumbu karang yang indah dan beragam spesies ikan. Jelajahi kekayaan biota laut yang menakjubkan.',
    category: 'Pantai',
    openDays: 'Buka',
    openTime: '08.00 - 18.00',
    ticketPrice: '250.000',
    rating: '4.9',
    imageAsset: 'assets/images/bunaken.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/cb/26/7d/bunaken-national-marine.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/cb/2a/34/bunaken-national-marine.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/cb/29/cb/bunaken-national-marine.jpg?w=1200&h=-1&s=1',
    ],
    reviews: [
      TourismReview(
        reviewerName: 'Michael Anderson',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Diving Paradise',
        reviewText:
            'Explored the underwater world of Pulau Bunaken, and it felt like a diving paradise. The coral reefs and marine life are spectacular. An absolute must-visit for diving enthusiasts!',
        reviewDate: '2023-03-12',
      ),
      TourismReview(
        reviewerName: 'Linda Taylor',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'Colorful Coral Gardens',
        reviewText:
            'The colorful coral gardens around Pulau Bunaken are a sight to behold. Snorkeling here is like entering a world of vibrant hues and fascinating marine creatures. Loved the experience!',
        reviewDate: '2023-02-28',
      ),
      TourismReview(
        reviewerName: 'Chris Roberts',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Unforgettable Snorkeling',
        reviewText:
            'Had an unforgettable snorkeling experience at Pulau Bunaken. The crystal-clear waters and diverse marine life make it a perfect spot for snorkelers. Highly recommended for water enthusiasts!',
        reviewDate: '2023-01-10',
      ),
    ],
  ),
  TourismPlace(
    name: 'Pantai Tanjung Bira',
    location: 'Sulawesi Selatan',
    description:
        'Pantai Tanjung Bira menawarkan pasir putih yang lembut dan air laut yang jernih. Terletak di ujung Sulawesi, pantai ini menjadi tempat ideal untuk bersantai, berenang, dan menikmati keindahan alam pesisir.',
    category: 'Pantai',
    openDays: 'Buka',
    openTime: '08.00 - 17.00',
    ticketPrice: '50.000',
    rating: '4.7',
    imageAsset: 'assets/images/tanjung-bira.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/a4/e8/c7/tanjung-bira.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/a4/e8/c6/tanjung-bira.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/86/9d/28/tanjung-bira.jpg?w=1200&h=-1&s=1',
    ],
    reviews: [
      TourismReview(
        reviewerName: 'Sarah Thompson',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'Tranquil Paradise',
        reviewText:
            'Pantai Tanjung Bira is a tranquil paradise with its soft white sand and clear blue waters. The peaceful atmosphere and scenic beauty make it an ideal getaway for relaxation. Loved every moment!',
        reviewDate: '2023-03-15',
      ),
      TourismReview(
        reviewerName: 'Ryan Johnson',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Sunset Delight',
        reviewText:
            'Witnessed a delightful sunset at Pantai Tanjung Bira. The colors of the sky reflecting on the water create a mesmerizing view. A perfect spot for evening serenity!',
        reviewDate: '2023-02-25',
      ),
      TourismReview(
        reviewerName: 'Emma Davis',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'Refreshing Swim',
        reviewText:
            'Took a refreshing swim at Pantai Tanjung Bira. The clean and clear waters make it perfect for swimming and enjoying the coastal vibes. A great destination for beach lovers!',
        reviewDate: '2023-01-18',
      ),
    ],
  ),
  TourismPlace(
    name: 'Pulau Derawan',
    location: 'Kalimantan Timur',
    description:
        'Pulau Derawan terkenal dengan keindahan bawah lautnya yang menakjubkan. Destinasi ini menjadi surganya penyelam dengan terumbu karang, penyu, dan spesies laut lainnya. Nikmati petualangan menyelam yang tak terlupakan.',
    category: 'Pantai',
    openDays: 'Buka',
    openTime: '09.00 - 18.00',
    ticketPrice: '200.000',
    rating: '4.8',
    imageAsset: 'assets/images/derawan.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/30/17/58/p-20161001-142932-mt.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/a4/6e/2f/derawan-archipelago.jpg?w=1000&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/a6/f0/ea/bird-view-of-jellyfish.jpg?w=1200&h=-1&s=1',
    ],
    reviews: [
      TourismReview(
        reviewerName: 'Kevin Turner',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Diving Paradise',
        reviewText:
            'Pulau Derawan is a diving paradise with its vibrant coral reefs and diverse marine life. The clarity of the water and the underwater landscapes make it a must-visit for scuba enthusiasts!',
        reviewDate: '2023-03-10',
      ),
      TourismReview(
        reviewerName: 'Lisa White',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'Turtle Haven',
        reviewText:
            'Encountered numerous turtles while diving around Pulau Derawan. The presence of these majestic creatures adds to the magic of the underwater world. An unforgettable experience!',
        reviewDate: '2023-02-20',
      ),
      TourismReview(
        reviewerName: 'Chris Harris',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Spectacular Dive Sites',
        reviewText:
            'Explored the spectacular dive sites of Pulau Derawan. The variety of dive spots and the abundance of marine life make it a top destination for diving adventures. Highly recommended!',
        reviewDate: '2023-01-12',
      ),
    ],
  ),
  TourismPlace(
    name: 'Pulau Weh',
    location: 'Aceh',
    description:
        'Pulau Weh adalah pulau terluar di Indonesia yang terkenal dengan keindahan bawah lautnya. Nikmati keindahan terumbu karang, pemandangan laut yang jernih, dan aktivitas menyelam yang menarik. Rasakan keajaiban bawah laut Pulau Weh.',
    category: 'pantai',
    openDays: 'Buka',
    openTime: '08.00 - 17.00',
    ticketPrice: '150.000',
    rating: '4.6',
    imageAsset: 'assets/images/weh.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/c0/bd/a3/gua-sarang-dari-atas.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/ec/aa/ca/gua-sarang-10mn-scooter.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/d6/d0/8d/iboih-inn-pier.jpg?w=1200&h=-1&s=1',
    ],
    reviews: [
      TourismReview(
        reviewerName: 'Amanda Wilson',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'Diving Paradise',
        reviewText:
            'Pulau Weh is a diving paradise with its crystal-clear waters and diverse marine life. The coral reefs and underwater landscapes make it a haven for scuba enthusiasts. A must-visit for underwater adventures!',
        reviewDate: '2023-03-05',
      ),
      TourismReview(
        reviewerName: 'Mark Johnson',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Serene Beaches',
        reviewText:
            'Explored the serene beaches of Pulau Weh and was captivated by the beauty of the coastline. The tranquil atmosphere and the clear blue waters make it a perfect escape for beach lovers.',
        reviewDate: '2023-02-18',
      ),
      TourismReview(
        reviewerName: 'Sophie Turner',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'Picturesque Views',
        reviewText:
            'Enjoyed picturesque views of Pulau Weh from various viewpoints. The landscapes and the ocean vistas are breathtaking. An ideal destination for nature lovers and photographers!',
        reviewDate: '2023-01-25',
      ),
    ],
  ),
  TourismPlace(
    name: 'Pulau Morotai',
    location: 'Maluku Utara',
    description:
        'Pulau Morotai adalah destinasi eksotis di Maluku Utara yang menawarkan keindahan pantai pasir putih, terumbu karang, dan sejarah perang dunia. Jelajahi kekayaan bawah laut dan eksplorasi warisan sejarah Pulau Morotai.',
    category: 'Pantai',
    openDays: 'Buka',
    openTime: '09.00 - 18.00',
    ticketPrice: '100.000',
    rating: '4.5',
    imageAsset: 'assets/images/morotai.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/2a/e2/12/little-dodola.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/6c/77/4a/dodola-island.jpg?w=800&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/b4/2e/4a/jembatan-pasir-putih.jpg?w=1200&h=-1&s=1',
    ],
    reviews: [
      TourismReview(
        reviewerName: 'Jonathan Baker',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Historical Exploration',
        reviewText:
            'Explored the historical sites of Pulau Morotai and learned about its significance during World War II. The combination of natural beauty and historical heritage makes it a unique and enriching destination.',
        reviewDate: '2023-03-08',
      ),
      TourismReview(
        reviewerName: 'Ella Davis',
        reviewerPhoto: 'assets/icons/female-profile.png',
        reviewHeader: 'White Sandy Beaches',
        reviewText:
            'Relaxed on the white sandy beaches of Pulau Morotai. The peaceful ambiance and the clear blue waters create a perfect setting for a day of sunbathing and beach activities.',
        reviewDate: '2023-02-20',
      ),
      TourismReview(
        reviewerName: 'Liam Harris',
        reviewerPhoto: 'assets/icons/male-profile.png',
        reviewHeader: 'Snorkeling Paradise',
        reviewText:
            'Discovered a snorkeling paradise in the waters around Pulau Morotai. The vibrant coral reefs and marine life make it a fantastic destination for underwater enthusiasts. Loved the snorkeling experience!',
        reviewDate: '2023-01-12',
      ),
    ],
  ),
];
