import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/Repository/PokemonRepository.dart';

void main() {
  final repository = PokemonRepository();

  test("Must return 1", () async {
    var PokemonRepository = await repository.getPokemons();
    print(PokemonRepository[0].Id.toString());
  });
}
