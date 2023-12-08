import 'package:flutter/material.dart';
import 'package:wtravel_app/models/tourism_place.dart';
import 'package:wtravel_app/screens/detail_place_screen.dart';
import 'package:wtravel_app/widgets/tourism_card.dart';
import 'package:wtravel_app/size_config.dart';

class AllTourismPlacesScreen extends StatelessWidget {
  final List<TourismPlace> allTourismPlaces;

  const AllTourismPlacesScreen({Key? key, required this.allTourismPlaces})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int crossAxisCount =
        (SizeConfig.screenWidth / 180).round(); // Ubah 180 sesuai kebutuhan

    return Scaffold(
      appBar: AppBar(
        title: const Text('Semua Destinasi'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
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
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
