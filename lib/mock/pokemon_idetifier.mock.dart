// ignore_for_file: public_member_api_docs, prefer-static-class

import '../src/common/domain/entities/pokemon_identifier.dart';

final kPokemonIdentifierListMock = List.generate(
  50,
  (index) => kPokemonIdentifierMock,
);
const kPokemonIdentifierMock = PokemonIdentifier(
  id: 1,
  name: 'bulbasaur',
  detailsUrl: 'https://pokeapi.co/api/v2/pokemon/1/',
);
