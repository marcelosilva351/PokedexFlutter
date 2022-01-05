import 'package:flutter/material.dart';

class HomePageController {
  Color getPokemonColor(String type) {
    if (type == "Grass" || type == "Bug") {
      return Colors.green;
    } else if (type == "Fire" || type == "Fighter") {
      return Colors.red;
    } else if (type == "Water") {
      return Colors.blue;
    } else if (type == "Poison" || type == "Psychic") {
      return Colors.purple;
    } else if (type == "Flying" || type == "Normal") {
      return Colors.brown;
    } else if (type == "Rock" || type == "Ground") {
      return Colors.grey;
    } else if (type == "Electric") {
      return Colors.yellow;
    } else if (type == "Ice") {
      return Colors.blue;
    } else {
      return Colors.white;
    }
  }
}
