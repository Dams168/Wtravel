import 'package:flutter/material.dart';
import 'package:wtravel_app/models/article_model.dart';
import 'package:wtravel_app/screens/detail_article_screen.dart';
import 'package:wtravel_app/widgets/article_card.dart';

class AllArticlesScreen extends StatelessWidget {
  final List<Article> allArticles;

  const AllArticlesScreen({Key? key, required this.allArticles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semua Artikel'),
      ),
      body: ListView.builder(
        itemCount: allArticles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: ArticleCard(
              article: allArticles[index],
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailArticleScreen(article: allArticles[index]);
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
