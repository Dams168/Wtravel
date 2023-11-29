import 'package:flutter/material.dart';
import 'package:wtravel_app/widgets/button_navbar.dart';
import 'package:wtravel_app/widgets/article_card.dart';
import 'package:wtravel_app/widgets/destination_card.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<DestinationCard> popularDestinations = [
    const DestinationCard(
      imagePath: "assets/images/home.png",
      title: "Bromo",
      location: "Jawa Timur",
    ),
    const DestinationCard(
      imagePath: "assets/images/logo.png",
      title: "Bromo",
      location: "Jawa Timur",
    ),
    const DestinationCard(
      imagePath: "assets/images/logo.png",
      title: "Bromo",
      location: "Jawa Timur",
    ),
    const DestinationCard(
      imagePath: "assets/images/logo.png",
      title: "Bromo",
      location: "Jawa Timur",
    ),
  ];

  // Sample articles for testing
  final List<ArticleCard> articleCards = [
    const ArticleCard(
      title: 'Ini Dia, Jurus Liburan Hemat ke Labuan Bajo!',
      summary:
          'Liburan Hemat Labuan Bajo- Labuan Bajo menjadi salah satu primadona pariwisata Indonesia',
      imageUrl: 'assets/images/home.png',
    ),
    const ArticleCard(
      title: 'Ini Dia, Jurus Liburan Hemat ke Labuan Bajo!',
      summary:
          'Liburan Hemat Labuan Bajo- Labuan Bajo menjadi salah satu primadona pariwisata Indonesia',
      imageUrl: 'assets/images/home.png',
    ),
    const ArticleCard(
      title: 'Ini Dia, Jurus Liburan Hemat ke Labuan Bajo!',
      summary:
          'Liburan Hemat Labuan Bajo- Labuan Bajo menjadi salah satu primadona pariwisata Indonesia',
      imageUrl: 'assets/images/home.png',
    ),
  ];

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your App Name'),
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const Text(
              'Destinasi Populer',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 275,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularDestinations.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: popularDestinations[index],
                  );
                },
              ),
            ),

            // Vertical Article Cards
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Artikel Untuk Kamu',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Use ListView.builder to display multiple articles
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: articleCards.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: articleCards[index],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const ButtonNavBar(selectedMenu: MenuState.beranda),
    );
  }
}
