// ignore_for_file: public_member_api_docs, prefer_const_constructors

import 'dart:developer';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../../mock/pokemon_idetifier.mock.dart';
import '../../../common/domain/x_state.dart';
import 'ui_components/pokelist_bar.dart';
import 'ui_components/pokelist_drawer.dart';
import 'ui_components/pokelist_page_empty.dart';
import 'ui_components/pokelist_page_error.dart';
import 'ui_components/pokelist_page_loading.dart';
import 'ui_components/pokelist_page_success.dart';
import 'ui_components/pokelist_results_count.dart';

class PokeListPage extends StatefulWidget {
  const PokeListPage({super.key});

  @override
  State<PokeListPage> createState() => _PokeListPageState();
}

class _PokeListPageState extends State<PokeListPage> {
  // TODO(Renato): move to controller
  XState state = XState.initial();
  bool showCount = false;

  @override
  Widget build(BuildContext context) {
    // TODO(Renato): remove mock assignment
    state = XState.success();
    showCount = true;

    final bottomPadding = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      drawer: PokeListDrawer(),
      resizeToAvoidBottomInset: true,
      bottomSheet: showCount
          ? PokelistResultsCount(
              bottomPadding: bottomPadding,
              displayCount: 20,
              clear: () => log('Clear'),
            )
          : SizedBox.shrink(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          0,
          0,
          0,
          showCount ? bottomPadding : 0,
        ),
        child: Column(
          children: [
            PokeListBar(),
            Expanded(
              child: state.maybeMap(
                loading: (_) => const PokeListPageLoading(),
                empty: (_) => PokeListPageEmpty(),
                success: (_) => PokeListPageSuccess(
                  pokemons: kPokemonIdentifierListMock,
                  bottomPadding: showCount
                      ? DSConstSize.materialTapTargetSize +
                          DSConstSpace.small +
                          DSConstSpace.medium
                      : 0,
                ),
                orElse: () => PokeListPageError(
                  onRefresh: () => log('Refresh poke list error'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
