// ignore_for_file: public_member_api_docs

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

enum PokemonType {
  bug('bug', DSConstColor.pokBug),
  dark('dark', DSConstColor.pokDark),
  dragon('dragon', DSConstColor.pokDragon),
  electric('electric', DSConstColor.pokElectric),
  fairy('fairy', DSConstColor.pokFairy),
  fighting('fighting', DSConstColor.pokFighting),
  fire('fire', DSConstColor.pokFire),
  flying('flying', DSConstColor.pokFlying),
  ghost('ghost', DSConstColor.pokGhost),
  grass('grass', DSConstColor.pokGrass),
  ground('ground', DSConstColor.pokGround),
  ice('ice', DSConstColor.pokIce),
  normal('normal', DSConstColor.pokNormal),
  poison('poison', DSConstColor.pokPoison),
  psychic('psychic', DSConstColor.pokPsychic),
  rock('rock', DSConstColor.pokRock),
  steel('steel', DSConstColor.pokSteel),
  water('water', DSConstColor.pokWater);

  const PokemonType(this.value, this.color);

  final String value;
  final Color color;

  static PokemonType? getByString(String value) =>
      PokemonType.values.byName(value);
}
