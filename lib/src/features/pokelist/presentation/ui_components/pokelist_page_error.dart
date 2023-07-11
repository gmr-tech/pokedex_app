// ignore_for_file: public_member_api_docs

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../../utils/display_strings.dart';

class PokeListPageError extends StatelessWidget {
  const PokeListPageError({
    super.key,
    this.onRefresh,
  });

  final VoidCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error),
          const DSBoxSpace(),
          const Text(DisplayStrings.errorLoadingPokemons),
          const DSBoxSpace.xxLarge(),
          ElevatedButton.icon(
            onPressed: onRefresh,
            icon: const Icon(Icons.refresh),
            label: const Text(DisplayStrings.refresh),
          ),
        ],
      ),
    );
  }
}
