import 'package:flutter/material.dart';
import 'package:pokedex/Pages/Home/FutureBuilderPokemon.dart';

class ContainerGrid extends StatelessWidget {
  const ContainerGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 5, color: Colors.black54, offset: Offset(1, 2))
              ]),
          child: FutureBuilderPokemon()),
    );
  }
}
