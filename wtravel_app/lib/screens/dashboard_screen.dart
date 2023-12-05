import 'package:flutter/material.dart';
import 'package:wtravel_app/models/article_model.dart';
import 'package:wtravel_app/models/tourism_place.dart';
import 'package:wtravel_app/screens/detail_article_screen.dart';
import 'package:wtravel_app/screens/detail_place_screen.dart';
import 'package:wtravel_app/widgets/article_card.dart';
import 'package:wtravel_app/widgets/button_navbar.dart';
import 'package:wtravel_app/widgets/category_card.dart';
import 'package:wtravel_app/widgets/tourism_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: 'Cari Destinasi Wisata',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        prefixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications),
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.message),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Qianziano Qylan Aldebaran',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Welcome back!',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const CategoryCardList(),
            TourismPlaceList(tourismPlaces: tourismPlaceList),
            ArticleList(articles: articleList),
          ],
        ),
      ),
      bottomNavigationBar: const ButtonNavBar(selectedMenu: MenuState.beranda),
    );
  }
}

class CategoryCardList extends StatelessWidget {
  const CategoryCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryCard(
            imagePath: 'assets/images/pantai_category.png',
            onPress: () {
              // Add your logic here
            },
          ),
          CategoryCard(
            imagePath: 'assets/images/gunung_category.png',
            onPress: () {
              // Add your logic here
            },
          ),
          CategoryCard(
            imagePath: 'assets/images/atraksi_category.png',
            onPress: () {
              // Add your logic here
            },
          ),
        ],
      ),
    );
  }
}

class TourismPlaceList extends StatelessWidget {
  final List<TourismPlace> tourismPlaces;

  const TourismPlaceList({Key? key, required this.tourismPlaces})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Destinasi Populer',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 250,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: tourismPlaces.map((place) {
                return SizedBox(
                  width: 200,
                  child: TourismCard(
                    place: place,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailPlaceScreen(place: place);
                      }));
                    },
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class ArticleList extends StatelessWidget {
  final List<Article> articles;

  const ArticleList({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Artikel Terbaru',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
          children: articles.map((article) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: SizedBox(
                width: 500,
                child: ArticleCard(
                  article: article,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailArticleScreen(article: article);
                      }),
                    );
                  },
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
