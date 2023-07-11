// ignore_for_file: public_member_api_docs

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../../common/domain/entities/pokemon_identifier.dart';
import '../pokelist_present_const.dart';
import '../pokemon_list_card.dart';

class PokeListPageSuccess extends StatefulWidget {
  const PokeListPageSuccess({
    required this.pokemons,
    required this.bottomPadding,
    super.key,
  });

  final List<PokemonIdentifier> pokemons;

  final double bottomPadding;

  @override
  State<PokeListPageSuccess> createState() => _PokeListPageSuccessState();
}

class _PokeListPageSuccessState extends State<PokeListPageSuccess> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      child: GridView.builder(
        controller: scrollController,
        padding: EdgeInsets.fromLTRB(
          DSConstSpace.medium,
          DSConstSpace.medium,
          DSConstSpace.medium,
          widget.bottomPadding,
        ),
        itemCount: widget.pokemons.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: PokeListPresentConst.gridCrossAxisCount,
          childAspectRatio: PokeListPresentConst.gridChildAspectRatio,
          crossAxisSpacing: DSConstSpace.small,
          mainAxisSpacing: DSConstSpace.small,
        ),
        itemBuilder: (context, index) => PokemonListCard(
          key: ValueKey(widget.pokemons[index].id),
          pokemonIdentifier: PokemonIdentifier(
            id: widget.pokemons[index].id,
            name: widget.pokemons[index].name,
            detailsUrl: widget.pokemons[index].detailsUrl,
          ),
        ),
      ),
    );
  }
}
