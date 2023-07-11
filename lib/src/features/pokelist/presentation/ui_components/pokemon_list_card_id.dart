// ignore_for_file: public_member_api_docs

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../../utils/int_x.dart';

class PokemonListCardID extends StatelessWidget {
  const PokemonListCardID({
    required this.id,
    super.key,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: DSConstSpace.medium,
      top: DSConstSpace.mSmall,
      child: Text(
        id.formatID(),
        style: context.dsTypography.caption,
      ),
    );
  }
}
