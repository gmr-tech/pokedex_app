// ignore_for_file: public_member_api_docs

import 'dart:developer';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../../common/presentation/common_present_const.dart';
import '../../../../utils/display_strings.dart';
import 'pokelist_sort_and_filter_button.dart';

class PokeListBar extends StatefulWidget {
  const PokeListBar({
    super.key,
  });

  @override
  State<PokeListBar> createState() => _PokeListBarState();
}

class _PokeListBarState extends State<PokeListBar> {
  final focusNode = FocusNode();
  final searchController = TextEditingController();

  // TODO(Renato): move to controller
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    // TODO(Renato): remove mock assignment
    isSearching = false;

    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme: const IconThemeData(color: DSConstColor.white),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).appBarTheme.backgroundColor,
        ),
        child: Column(
          children: [
            SafeArea(
              bottom: false,
              child: Row(
                children: [
                  const DrawerButton(),
                  Text(
                    DisplayStrings.appName,
                    style: Theme.of(context).appBarTheme.titleTextStyle,
                  ),
                  const Spacer(),
                  const PokeListSortAndFilterButton(),
                  IconButton(
                    onPressed: () => log('Implement search'),
                    icon: Icon(
                      isSearching ? Icons.search_off : Icons.search,
                    ),
                  ),
                  const DSBoxSpace.xSmall(),
                ],
              ),
            ),
            AnimatedSize(
              duration: const Duration(
                milliseconds: CommonPresentConst.mediumAnimationDuration,
              ),
              child: isSearching
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(
                        DSConstSpace.medium,
                        0,
                        0,
                        DSConstSpace.medium,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: searchController,
                              decoration: const InputDecoration(
                                hintText: DisplayStrings.searchHint,
                              ),
                              onChanged: (term) => log('Search: $term'),
                              focusNode: focusNode,
                              onFieldSubmitted: (_) => focusNode.unfocus(),
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                          AnimatedSize(
                            duration: const Duration(
                              milliseconds:
                                  CommonPresentConst.fastAnimationDuration,
                            ),
                            // HACK to improve UX with animatons
                            // ignore: avoid-nested-conditional-expressions
                            child: searchController.text.isNotEmpty
                                ? IconButton(
                                    onPressed: () => log('Clear search'),
                                    icon: const Icon(Icons.clear_rounded),
                                  )
                                : const DSBoxSpace(),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
