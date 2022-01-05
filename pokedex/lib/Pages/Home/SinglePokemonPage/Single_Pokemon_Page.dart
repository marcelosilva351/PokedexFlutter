import 'package:flutter/material.dart';
import 'package:pokedex/Controllers/HomePageController.dart';
import 'package:pokedex/Models/Pokemon.dart';
import 'package:pokedex/Pages/Home/SinglePokemonPage/CardInfoPokemon.dart';
import 'package:pokedex/Pages/Home/SinglePokemonPage/ContainerCardPokemon.dart';
import 'package:pokedex/Pages/Home/SinglePokemonPage/ListCardsWeaknesses.dart';

class SinglePokemonPage extends StatelessWidget {
  final Color corAppBar;
  final Pokemon pokemon;
  final HomePageController controller = HomePageController();
  SinglePokemonPage(this.corAppBar, this.pokemon);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: corAppBar, title: Text(pokemon.Name)),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ContainerCardPokemon(corAppBar, pokemon),
              Padding(padding: EdgeInsets.only(top: 30)),
              Text(
                "Info",
                style: TextStyle(
                    color: corAppBar,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              CardInfoPokemon(corAppBar, pokemon),
              Padding(padding: EdgeInsets.only(top: 30)),
              Text(
                "Weaknesses",
                style: TextStyle(
                    color: corAppBar,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              ListCardsWeakNesses(pokemon)
            ],
          )),
    );
  }
}
