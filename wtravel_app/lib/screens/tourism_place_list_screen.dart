import 'package:flutter/material.dart';
import 'package:wtravel_app/models/tourism_place.dart';
import 'package:wtravel_app/screens/detail_place_screen.dart';
import 'package:wtravel_app/widgets/tourism_card.dart';

class AllTourismPlacesScreen extends StatelessWidget {
  final List<TourismPlace> allTourismPlaces;

  const AllTourismPlacesScreen({Key? key, required this.allTourismPlaces})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semua Destinasi'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 8.0, // Spacing between columns
          mainAxisSpacing: 8.0, // Spacing between rows
        ),
        itemCount: allTourismPlaces.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailPlaceScreen(place: allTourismPlaces[index]);
                  },
                ),
              );
            },
            child: TourismCard(
              place: allTourismPlaces[index],
            ),
          );
        },
      ),
    );
  }
}
