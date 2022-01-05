import 'package:pokedex/Models/Pokemon.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class PokemonRepository {
  final urlAllPokemons =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  final dio = Dio();

  Future<List<Pokemon>> getPokemons() async {
    List<Pokemon> pokemons = [];
    var response = await dio.get(urlAllPokemons);
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.data);
      for (var data in responseData['pokemon']) {
        List<String> weknesses = [];
        int id = 0;
        String name = data['name'];
        String type = data['type'][0];
        String img = data['img'];
        final height = data['height'];
        final weight = data['weight'];
        for (var weak in data['weaknesses']) {
          weknesses.add(weak);
        }
        var pokemonAdd =
            Pokemon(id, name, img, type, height, weight, weknesses);
        pokemons.add(pokemonAdd);
      }
      return pokemons;
    } else {
      throw Exception("Erro ao carregar dados");
    }
  }
}
