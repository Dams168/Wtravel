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
      body: ListView.builder(
        itemCount: allTourismPlaces.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: TourismCard(
              place: allTourismPlaces[index],
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
            ),
          );
        },
      ),
    );
  }
}
