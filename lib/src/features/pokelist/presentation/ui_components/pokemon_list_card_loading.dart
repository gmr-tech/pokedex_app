// ignore_for_file: public_member_api_docs

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../../common/domain/entities/pokemon_identifier.dart';
import 'pokemon_list_card_id.dart';
import 'pokemon_list_card_name.dart';

class PokemonListCardLoading extends StatelessWidget {
  const PokemonListCardLoading({
    required this.pokemonID,
    super.key,
  });

  final PokemonIdentifier pokemonID;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).colorScheme.surface,
            Theme.of(context).colorScheme.background,
          ],
        ),
        borderRadius: const BorderRadius.all(DSConstProperty.radius),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Stack(
          alignment: Alignment.center,
          children: [
            PokemonListCardName(
              name: pokemonID.name,
              maxWidth: constraints.maxWidth,
            ),
            PokemonListCardID(id: pokemonID.id),
            const Positioned(
              top: DSConstSpace.xLarge,
              bottom: DSConstSpace.medium,
              left: DSConstSpace.large,
              right: DSConstSpace.large,
              child: CircularProgressIndicator.adaptive(),
            ),
          ],
        ),
      ),
    );
  }
}
