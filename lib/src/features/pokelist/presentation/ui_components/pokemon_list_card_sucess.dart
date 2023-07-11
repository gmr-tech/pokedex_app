// ignore_for_file: public_member_api_docs

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../../common/domain/entities/pokemon.dart';
import '../../../../common/presentation/common_present_const.dart';
import '../../../../utils/int_x.dart';
import 'hero_pokemon_image.dart';
import 'pokemon_list_card_name.dart';

class PokemonListCardSucess extends StatelessWidget {
  const PokemonListCardSucess({
    required this.pokemon,
    super.key,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final color = pokemon.types.first.color;

    return Ink(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            color.withOpacity(0.2),
            color.withOpacity(0.4),
          ],
        ),
        borderRadius: const BorderRadius.all(DSConstProperty.radius),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            alignment: Alignment.center,
            children: [
              PokemonListCardName(
                name: pokemon.name,
                maxWidth: constraints.maxWidth,
              ),
              Positioned(
                bottom: DSConstSpace.medium,
                left: DSConstSpace.mSmall,
                right: constraints.maxWidth / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      runSpacing: DSConstSpace.small,
                      spacing: DSConstSpace.medium,
                      children: List.generate(
                        pokemon.types.length,
                        (index) => DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              DSConstProperty.radiusLarge,
                            ),
                            color: pokemon.types[index].color.withOpacity(
                              CommonPresentConst.highOpacity,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: DSConstSpace.xSmall,
                              horizontal: DSConstSpace.mSmall,
                            ),
                            child: Text(
                              pokemon.types[index].value,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: DSConstSpace.medium,
                top: DSConstSpace.mSmall,
                child: Text(
                  pokemon.id.formatID(),
                  style: context.dsTypography.caption,
                ),
              ),
              Positioned(
                bottom: DSConstSpace.medium,
                right: DSConstSpace.medium,
                top: DSConstSpace.xLarge,
                left: constraints.maxWidth / 2,
                child: HeroPokemonImage(
                  id: pokemon.id,
                  imageUrl: pokemon.imageUrl,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
