import 'package:flutter/material.dart';
import 'package:wtravel_app/models/article_model.dart';
import 'package:wtravel_app/models/tourism_place.dart';
import 'package:wtravel_app/screens/article_list_screen.dart';
import 'package:wtravel_app/screens/detail_article_screen.dart';
import 'package:wtravel_app/screens/detail_place_screen.dart';
import 'package:wtravel_app/screens/tourism_place_list_screen.dart';
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
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(),
                ),
              );
            },
            icon: const Icon(Icons.search),
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
            onPress: () {},
          ),
          CategoryCard(
            imagePath: 'assets/images/gunung_category.png',
            onPress: () {},
          ),
          CategoryCard(
            imagePath: 'assets/images/atraksi_category.png',
            onPress: () {},
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
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Destinasi Populer',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AllTourismPlacesScreen(
                            allTourismPlaces: tourismPlaces);
                      },
                    ),
                  );
                },
                child: const Text(
                  'Lihat Semua',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 250,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: tourismPlaces.take(5).map((place) {
                return SizedBox(
                  width: 200,
                  child: TourismCard(
                    place: place,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return DetailPlaceScreen(place: place);
                        }),
                      );
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
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Artikel Terbaru',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AllArticlesScreen(allArticles: articles);
                      },
                    ),
                  );
                },
                child: const Text(
                  'Lihat Semua',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: articles.take(3).map((article) {
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

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  List<TourismPlace> searchResults = [];

  void _filterTourismPlaces(String query) {
    List<TourismPlace> filteredList = tourismPlaceList
        .where(
            (place) => place.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    setState(() {
      searchResults = filteredList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: searchController,
          onChanged: (value) {
            _filterTourismPlaces(value);
          },
          decoration: const InputDecoration(
            hintText: 'Cari Destinasi Wisata',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          return TourismCard(
            place: searchResults[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DetailPlaceScreen(place: searchResults[index]);
                }),
              );
            },
          );
        },
      ),
    );
  }
}
