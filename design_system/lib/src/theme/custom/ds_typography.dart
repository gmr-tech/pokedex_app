// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: avoid-non-null-assertion
// ignore_for_file: avoid-global-state

part of 'ds_custom_theme.dart';

@TailorComponent(themes: ['light', 'dark'])
class _$DSTypography {
  //do the same with caption
  static List<TextStyle> pokemonID = [
    DSBaseTypography.pokemonID.copyWith(
      color: DSConstColor.dark,
    ),
    DSBaseTypography.pokemonID.copyWith(
      color: DSConstColor.light,
    ),
  ];
}
