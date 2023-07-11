// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

@immutable
class PokemonBaseStats {
  const PokemonBaseStats({
    required this.hp,
    required this.attack,
    required this.defense,
    required this.specialAttack,
    required this.specialDefense,
    required this.speed,
  });

  final int hp;
  final int attack;
  final int defense;
  final int specialAttack;
  final int specialDefense;
  final int speed;

  Map<String, int> mapValues() {
    return {
      'HP': hp,
      'ATK': attack,
      'DEF': defense,
      'SATK': specialAttack,
      'SDEF': specialDefense,
      'SPD': speed,
    };
  }

  PokemonBaseStats copyWith({
    int? hp,
    int? attack,
    int? defense,
    int? specialAttack,
    int? specialDefense,
    int? speed,
  }) {
    return PokemonBaseStats(
      hp: hp ?? this.hp,
      attack: attack ?? this.attack,
      defense: defense ?? this.defense,
      specialAttack: specialAttack ?? this.specialAttack,
      specialDefense: specialDefense ?? this.specialDefense,
      speed: speed ?? this.speed,
    );
  }

  @override
  String toString() {
    return 'PokemonBaseStats(hp: $hp, attack: $attack, defense: $defense, '
        'specialAttack: $specialAttack, specialDefense: $specialDefense, '
        'speed: $speed)';
  }

  @override
  bool operator ==(covariant PokemonBaseStats other) {
    if (identical(this, other)) {
      return true;
    }

    return other.hp == hp &&
        other.attack == attack &&
        other.defense == defense &&
        other.specialAttack == specialAttack &&
        other.specialDefense == specialDefense &&
        other.speed == speed;
  }

  @override
  int get hashCode {
    return hp.hashCode ^
        attack.hashCode ^
        defense.hashCode ^
        specialAttack.hashCode ^
        specialDefense.hashCode ^
        speed.hashCode;
  }
}
