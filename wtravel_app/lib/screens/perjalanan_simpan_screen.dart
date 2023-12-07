import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wtravel_app/models/tourism_place.dart';
import 'package:wtravel_app/screens/detail_place_screen.dart';
import 'package:wtravel_app/services/favorite_places_provider.dart';
import 'package:wtravel_app/widgets/tourism_card.dart';

class PerjalananSimpan extends StatefulWidget {
  const PerjalananSimpan({Key? key}) : super(key: key);

  @override
  _PerjalananSimpanState createState() => _PerjalananSimpanState();
}

class _PerjalananSimpanState extends State<PerjalananSimpan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<FavoritePlacesProvider>(
        builder: (context, favoriteProvider, child) {
          List<TourismPlace> savedTrips = favoriteProvider.favoritePlaces;

          return savedTrips.isEmpty
              ? const Center(
                  child: Text('Belum ada perjalanan yang disimpan.'),
                )
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 8.0, // Spacing between columns
                    mainAxisSpacing: 8.0, // Spacing between rows
                  ),
                  itemCount: savedTrips.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailPlaceScreen(place: savedTrips[index]),
                          ),
                        );
                      },
                      child: TourismCard(
                        place: savedTrips[index],
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
