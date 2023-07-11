// ignore_for_file: public_member_api_docs

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../../common/domain/entities/pokemon_type.dart';
import '../../../../common/presentation/common_present_const.dart';
import '../../../../utils/string_x.dart';

class PokemonTypeSelectionChip extends StatelessWidget {
  const PokemonTypeSelectionChip({
    required this.type,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  final bool isSelected;
  final PokemonType type;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          DSConstProperty.radiusXLarge,
        ),
        color: isSelected
            ? type.color.withOpacity(CommonPresentConst.highOpacity)
            : Theme.of(context)
                .disabledColor
                .withOpacity(CommonPresentConst.midOpacity),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(
          DSConstProperty.radiusXLarge,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: DSConstSpace.small,
            horizontal: DSConstSpace.medium,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                type.name.capitalizeFirst(),
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .color!
                          .withOpacity(
                            isSelected ? 1 : CommonPresentConst.midOpacity,
                          ),
                    ),
              ),
              if (isSelected) ...[
                const DSBoxSpace.small(),
                Icon(
                  Icons.close,
                  size: DSConstSize.iconSizeSmall,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
