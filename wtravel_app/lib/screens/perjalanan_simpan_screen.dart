import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wtravel_app/models/tourism_place.dart';
import 'package:wtravel_app/screens/detail_place_screen.dart';
import 'package:wtravel_app/services/favorite_places_provider.dart';
import 'package:wtravel_app/widgets/tourism_card.dart'; // Import the TourismCard widget

class PerjalananSimpan extends StatefulWidget {
  const PerjalananSimpan({Key? key}) : super(key: key);

  @override
  _PerjalananSimpanState createState() => _PerjalananSimpanState();
}

class _PerjalananSimpanState extends State<PerjalananSimpan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perjalanan Disimpan'),
      ),
      body: Consumer<FavoritePlacesProvider>(
        builder: (context, favoriteProvider, child) {
          List<TourismPlace> savedTrips = favoriteProvider.favoritePlaces;

          return savedTrips.isEmpty
              ? const Center(
                  child: Text('Belum ada perjalanan yang disimpan.'),
                )
              : ListView.builder(
                  itemCount: savedTrips.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 200, // Set the desired width
                      child: TourismCard(
                        place: savedTrips[index],
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailPlaceScreen(place: savedTrips[index]),
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
