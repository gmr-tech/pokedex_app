// ignore_for_file: public_member_api_docs

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../../utils/display_strings.dart';

class PokelistResultsCount extends StatelessWidget {
  const PokelistResultsCount({
    required this.bottomPadding,
    required this.displayCount,
    required this.clear,
    super.key,
  });

  final int displayCount;
  final Function() clear;
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        DSConstSpace.medium,
        DSConstSpace.small,
        DSConstSpace.xxSmall,
        bottomPadding,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  'Showing $displayCount pokemons',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const DSBoxSpace.small(),
              TextButton.icon(
                onPressed: clear,
                icon: const Icon(Icons.clear_rounded),
                label: const Text(DisplayStrings.clearAllFilters),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
