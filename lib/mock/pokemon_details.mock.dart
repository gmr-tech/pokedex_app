// ignore_for_file: public_member_api_docs, prefer-static-class

import '../src/common/domain/entities/pokemon.dart';
import '../src/common/domain/entities/pokemon_about_properties.dart';
import '../src/common/domain/entities/pokemon_base_stats.dart';
import '../src/common/domain/entities/pokemon_type.dart';

final kPokemonDetailsListMock = List.generate(
  50,
  (index) => kPokemonDetailsMock,
);

final kPokemonDetailsMock = Pokemon(
  id: 1,
  name: 'bulbasaur',
  imageUrl:
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
  types: const [
    PokemonType.grass,
    PokemonType.poison,
  ],
  aboutProperties: PokemonAboutProperties(
    height: 7,
    weight: 69,
    moves: [
      'razor-wind',
      'swords-dance',
      'cut',
      'bind',
      'vine-whip',
      'headbutt',
      'tackle',
      'body-slam',
      'take-down',
      'double-edge',
      'growl',
      'strength',
      'mega-drain',
    ],
  ),
  baseStats: const PokemonBaseStats(
    hp: 45,
    attack: 49,
    defense: 49,
    specialAttack: 65,
    specialDefense: 65,
    speed: 45,
  ),
);
