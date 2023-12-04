import 'package:flutter/material.dart';
import 'package:wtravel_app/models/article_model.dart';

class DetailArticleScreen extends StatelessWidget {
  final Article article;

  const DetailArticleScreen({Key? key, required this.article})
      : super(key: key);

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
                'assets/images/appbar-logo.png',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              article.imageUrls.isNotEmpty ? article.imageUrls[0] : '',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    article.report,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
