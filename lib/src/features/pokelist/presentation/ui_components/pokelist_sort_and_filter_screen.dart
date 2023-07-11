// ignore_for_file: public_member_api_docs

import 'dart:developer';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../../common/domain/entities/pokemon_type.dart';
import '../../../../common/domain/sorting_order.dart';
import '../../../../common/domain/x_state.dart';
import '../../../../utils/display_strings.dart';
import '../../../../utils/string_x.dart';
import 'pokemon_type_selection_chip.dart';

class PokelistSortAndFilterScreen extends StatefulWidget {
  const PokelistSortAndFilterScreen({
    super.key,
  });

  @override
  State<PokelistSortAndFilterScreen> createState() =>
      _PokelistSortAndFilterScreenState();
}

class _PokelistSortAndFilterScreenState
    extends State<PokelistSortAndFilterScreen> {
  final expansionController = ExpansionTileController();

  // TODO(Renato): move to controller
  XState detailsState = const XState.initial();
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    // TODO(Renato): remove mock assignment
    detailsState = const XState.success();
    isSearching = true;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DSBoxSpace.small(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: DSConstSpace.small),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CloseButton(
                color: Theme.of(context).colorScheme.onSurface,
              ),
              Text(
                DisplayStrings.sortAndFilter,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              IconButton(
                onPressed: () => log('Implement info'),
                icon: Icon(
                  Icons.info_outlined,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.sort_rounded,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          visualDensity: VisualDensity.compact,
          title: const Text(DisplayStrings.sortingBy),
          subtitle: Text(const SortingOrder.byIDLowHigh().display ?? ''),
          onTap: () => setState(() => log('Toggle sort')),
        ),
        AnimatedCrossFade(
          firstChild: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: DSConstSpace.medium,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DSBoxSpace(),
                Text(
                  DisplayStrings.advancedFilterInfo.addInfoChar(),
                ),
                const DSBoxSpace(),
                const LinearProgressIndicator(value: 0.2),
              ],
            ),
          ),
          secondChild: const SizedBox.shrink(),
          crossFadeState: isSearching
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          duration: const Duration(
            milliseconds: 300,
          ),
        ),
        ExpansionTile(
          controller: expansionController,
          title: const Text(DisplayStrings.advancedFilters),
          children: detailsState.maybeMap(
            orElse: () => [],
            success: (_) => [
              Row(
                children: [
                  const DSBoxSpace(),
                  Text(
                    DisplayStrings.types,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Spacer(),
                  TextButton.icon(
                    label: Text(
                      isSearching
                          ? DisplayStrings.selectAll
                          : DisplayStrings.clear,
                    ),
                    onPressed: () => setState(
                      () => log('Toggle select all'),
                    ),
                    icon: Icon(
                      isSearching ? Icons.check_rounded : Icons.clear_rounded,
                    ),
                  ),
                  const DSBoxSpace.small(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  DSConstSpace.small,
                  0,
                  DSConstSpace.small,
                  DSConstSpace.medium,
                ),
                child: Wrap(
                  spacing: DSConstSpace.small,
                  runSpacing: DSConstSpace.small,
                  children: List.generate(
                    PokemonType.values.length,
                    (index) => PokemonTypeSelectionChip(
                      type: PokemonType.values[index],
                      isSelected: true,
                      onTap: () => setState(
                        () => log('Toggle type'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).padding.bottom > DSConstSpace.xxLarge
              ? MediaQuery.of(context).padding.bottom
              : DSConstSpace.xxLarge,
        ),
      ],
    );
  }
}
