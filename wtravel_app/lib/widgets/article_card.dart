import 'package:flutter/material.dart';
import 'package:wtravel_app/constants.dart';
import 'package:wtravel_app/models/article_model.dart';

class ArticleCard extends StatelessWidget {
  final Article article;
  final VoidCallback press;

  const ArticleCard({
    Key? key,
    required this.article,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 3),
            blurRadius: 6,
            spreadRadius: 0,
            color: shadowColor.withOpacity(0.2),
          ),
        ],
        border: Border.all(
          color: Colors.grey.withOpacity(0.2),
          width: 1.0,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        article.title,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        article.summary,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16.0),
                // Image on the right with border radius
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      article.imageAsset,
                      height: 90,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
