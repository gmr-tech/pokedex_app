import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs

@immutable
class PokemonIdentifier {
  const PokemonIdentifier({
    required this.id,
    required this.name,
    this.detailsUrl,
  });

  final int id;
  final String name;
  final String? detailsUrl;

  PokemonIdentifier copyWith({
    int? id,
    String? name,
    String? detailsUrl,
  }) {
    return PokemonIdentifier(
      id: id ?? this.id,
      name: name ?? this.name,
      detailsUrl: detailsUrl ?? this.detailsUrl,
    );
  }

  @override
  String toString() =>
      'PokemonIdentifier(id: $id, name: $name, detailsUrl: $detailsUrl)';

  @override
  bool operator ==(covariant PokemonIdentifier other) {
    if (identical(this, other)) {
      return true;
    }

    return other.id == id &&
        other.name == name &&
        other.detailsUrl == detailsUrl;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ detailsUrl.hashCode;
}
