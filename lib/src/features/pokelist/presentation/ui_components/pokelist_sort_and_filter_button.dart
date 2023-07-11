// ignore_for_file: public_member_api_docs

import 'dart:async';

import 'package:flutter/material.dart';

import 'pokelist_sort_and_filter_screen.dart';

class PokeListSortAndFilterButton extends StatelessWidget {
  const PokeListSortAndFilterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => unawaited(
        showModalBottomSheet(
          isScrollControlled: true,
          constraints: BoxConstraints.loose(
            Size(
              double.infinity,
              MediaQuery.of(context).size.height * 0.8,
            ),
          ),
          context: context,
          builder: (_) => const PokelistSortAndFilterScreen(),
        ),
      ),
      icon: const Icon(Icons.filter_list_rounded),
    );
  }
}
