import 'package:flutter/material.dart';
import 'package:pokedex/Controllers/HomePageController.dart';
import 'package:pokedex/Models/Pokemon.dart';
import 'package:pokedex/Pages/Home/SinglePokemonPage/Single_Pokemon_Page.dart';

class GridViewPokemon extends StatefulWidget {
  List<Pokemon> ListaPokemon;
  GridViewPokemon(this.ListaPokemon);

  @override
  _GridViewState createState() => _GridViewState();
}

class _GridViewState extends State<GridViewPokemon> {
  HomePageController controller = HomePageController();

  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: widget.ListaPokemon.length,
          itemBuilder: (context, index) {
            var pokemon = widget.ListaPokemon[index];

            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SinglePokemonPage(
                      controller.getPokemonColor(pokemon.Type), pokemon);
                }));
              },
              child: Card(
                color: controller.getPokemonColor(pokemon.Type),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      pokemon.Name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.network(pokemon.Image),
                    Text(
                      pokemon.Type,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
