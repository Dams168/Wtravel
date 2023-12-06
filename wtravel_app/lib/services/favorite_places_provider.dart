import 'package:flutter/material.dart';
import 'package:wtravel_app/models/tourism_place.dart';

class FavoritePlacesProvider extends ChangeNotifier {
  final List<TourismPlace> _favoritePlaces = [];

  List<TourismPlace> get favoritePlaces => _favoritePlaces;

  void addToFavorites(TourismPlace place) {
    _favoritePlaces.add(place);
    notifyListeners();
  }

  void removeFromFavorites(TourismPlace place) {
    _favoritePlaces.remove(place);
    notifyListeners();
  }

  bool isFavorite(TourismPlace place) {
    return _favoritePlaces.contains(place);
  }
}
