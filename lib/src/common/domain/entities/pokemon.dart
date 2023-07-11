// ignore_for_file: public_member_api_docs

import 'package:flutter/foundation.dart';

import 'pokemon_about_properties.dart';
import 'pokemon_base_stats.dart';
import 'pokemon_identifier.dart';
import 'pokemon_type.dart';

@immutable
class Pokemon extends PokemonIdentifier {
  const Pokemon({
    required super.id,
    required super.name,
    required this.imageUrl,
    required this.types,
    required this.aboutProperties,
    required this.baseStats,
    super.detailsUrl,
  });

  final String imageUrl;
  final List<PokemonType> types;
  final PokemonAboutProperties aboutProperties;
  final PokemonBaseStats baseStats;

  @override
  Pokemon copyWith({
    int? id,
    String? name,
    String? detailsUrl,
    String? imageUrl,
    List<PokemonType>? types,
    PokemonAboutProperties? aboutProperties,
    PokemonBaseStats? baseStats,
  }) {
    return Pokemon(
      id: id ?? this.id,
      name: name ?? this.name,
      detailsUrl: detailsUrl ?? this.detailsUrl,
      imageUrl: imageUrl ?? this.imageUrl,
      types: types ?? this.types,
      aboutProperties: aboutProperties ?? this.aboutProperties,
      baseStats: baseStats ?? this.baseStats,
    );
  }

  @override
  bool operator ==(covariant Pokemon other) {
    if (identical(this, other)) {
      return true;
    }

    return other.id == id &&
        other.name == name &&
        other.detailsUrl == detailsUrl &&
        other.imageUrl == imageUrl &&
        listEquals(other.types, types) &&
        other.aboutProperties == aboutProperties &&
        other.baseStats == baseStats;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        detailsUrl.hashCode ^
        imageUrl.hashCode ^
        types.hashCode ^
        aboutProperties.hashCode ^
        baseStats.hashCode;
  }

  @override
  String toString() {
    return 'Pokemon(id: $id, imageUrl: $imageUrl, name: $name, '
        'detailsUrl: $detailsUrl, types: $types, '
        'aboutProperties: $aboutProperties, baseStats: $baseStats)';
  }
}
