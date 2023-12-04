import 'package:flutter/material.dart';
import 'package:wtravel_app/constants.dart';
import 'package:wtravel_app/models/tourism_place.dart';

class TourismCard extends StatelessWidget {
  final TourismPlace place;
  final VoidCallback? onTap;

  const TourismCard({Key? key, required this.place, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  place.imageAsset,
                  fit: BoxFit.cover,
                  width: 200,
                  height: 125,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place.name,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 16,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 4),
                          Text(place.location),
                        ],
                      ),
                      const SizedBox(width: 16),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: bgDarkColor),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.yellow,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              place.rating,
                              style: const TextStyle(color: bgLightColor),
                            ),
                          ],
                        ),
                      ),
                    ],
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
