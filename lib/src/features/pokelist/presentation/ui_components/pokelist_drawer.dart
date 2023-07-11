// ignore_for_file: public_member_api_docs

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../../common/presentation/theme_switcher_button.dart';
import '../../../../utils/display_strings.dart';

class PokeListDrawer extends StatelessWidget {
  const PokeListDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(DSConstSpace.medium),
              child: Text(
                DisplayStrings.appName,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const ThemeSwitcherButton(),
          ],
        ),
      ),
    );
  }
}
