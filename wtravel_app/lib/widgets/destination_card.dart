import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;

  const DestinationCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  location,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
