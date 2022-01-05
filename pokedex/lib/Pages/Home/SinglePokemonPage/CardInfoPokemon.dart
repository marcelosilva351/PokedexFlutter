import 'package:flutter/material.dart';
import 'package:pokedex/Models/Pokemon.dart';

class CardInfoPokemon extends StatelessWidget {
  final Color corAppBar;
  final Pokemon pokemon;
  CardInfoPokemon(this.corAppBar, this.pokemon);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: corAppBar,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(children: [
              Text(
                "Height : ",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(left: 9)),
              Text(
                pokemon.height,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ]),
            Row(children: [
              Text(
                "Weight : ",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(left: 9)),
              Text(
                pokemon.weight,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
