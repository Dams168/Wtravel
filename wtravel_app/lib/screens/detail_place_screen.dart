import 'package:flutter/material.dart';
import 'package:wtravel_app/constants.dart';
import 'package:wtravel_app/models/tourism_place.dart';
import 'package:wtravel_app/size_config.dart';
import 'package:wtravel_app/widgets/review_card.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailPlaceScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailPlaceScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailPlacePage(place: place);
  }
}

class DetailPlacePage extends StatelessWidget {
  final TourismPlace place;

  const DetailPlacePage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image.asset(place.imageAsset),
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              const FavoriteButton(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          place.name,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'Staatliches',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4.0),
                              child: const Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.yellow,
                              ),
                            ),
                            const SizedBox(width: 4.0),
                            Text(
                              place.rating,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Oxygen',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          place.description,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Oxygen',
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: bgDarkIcon,
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: const Icon(Icons.location_on),
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              'Indonesia\n${place.location}',
                              style: informationTextStyle,
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: bgDarkIcon,
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: const Icon(Icons.access_time_filled),
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              'Buka\n${place.openTime}',
                              style: informationTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: place.imageUrls.map((url) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(url),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Ulasan',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Column(
                          children: place.reviews.map((review) {
                            return ReviewCard(review: review);
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomAppBar(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rp ${place.ticketPrice},00/Orang',
                    style: informationTextStyle,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                    ),
                    child: const Text(
                      'Tambah',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: IconButton(
        icon: Icon(
          isFavorite ? Icons.bookmark : Icons.bookmark_add_outlined,
          color: Colors.yellow,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}
