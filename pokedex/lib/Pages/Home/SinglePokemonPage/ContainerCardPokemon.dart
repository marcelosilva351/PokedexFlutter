import 'package:flutter/material.dart';
import 'package:pokedex/Models/Pokemon.dart';

class ContainerCardPokemon extends StatelessWidget {
  final Color corAppBar;
  final Pokemon pokemon;
  ContainerCardPokemon(this.corAppBar, this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 5, color: corAppBar, offset: Offset(1, 2)),
          ],
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Row(
        children: [
          Container(
            width: 200,
            decoration: BoxDecoration(
                color: corAppBar,
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(16))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 33.0),
                  child: Text(
                    "#${pokemon.Id}",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                Text(pokemon.Name,
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.white),
                    width: 60,
                    height: 20,
                    child: Center(
                        child: Text(
                      pokemon.Type,
                      style: TextStyle(
                          color: corAppBar, fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Image.network(pokemon.Image),
            ),
          ),
        ],
      ),
    );
  }
}
