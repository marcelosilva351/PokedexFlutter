import 'package:flutter/material.dart';
import 'package:pokedex/Models/Pokemon.dart';
import 'package:pokedex/Pages/Home/GridViewPokemon.dart';
import 'package:pokedex/Repository/PokemonRepository.dart';

class FutureBuilderPokemon extends StatelessWidget {
  final repository = PokemonRepository();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
        future: repository.getPokemons(),
        builder: (context, snapchot) {
          if (!snapchot.hasData) {
            return Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          return GridViewPokemon(snapchot.data!);
        });
  }
}
