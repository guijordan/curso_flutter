import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:great_places/models/place.dart';

class GreatPlaces with ChangeNotifier {
  final List<Place> _items = [];
  List<Place> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length;
  }

  Place itemByIndex(int index) {
    return _items[index];
  }

  void addPlace(String titulo, File image) {
    final newPlace = Place(
      id: Random().nextDouble().toString(),
      title: titulo,
      location: null,
      image: image,
    );

    _items.add(newPlace);
    notifyListeners();
  }
}
