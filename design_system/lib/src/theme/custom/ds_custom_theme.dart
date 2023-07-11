// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import '../base/ds_base_typography.dart';
import '../constant/ds_const_color.dart';

part 'ds_color.dart';
part 'ds_custom_theme.tailor.dart';
part 'ds_typography.dart';

@tailor
class _$DSCustomTheme {
  @themeExtension
  static List<DSColor> dsColor = DSColor.themes;

  @themeExtension
  static List<DSTypography> dsTypography = DSTypography.themes;
}
