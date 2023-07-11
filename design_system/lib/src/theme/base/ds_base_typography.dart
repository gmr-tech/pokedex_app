// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

class DSBaseTypography {
  static const poppinsFont = 'Poppins';

  static const TextTheme textTheme = TextTheme(
    /// [DISPLAY]

    displayLarge: TextStyle(
      fontFamily: poppinsFont,
      fontSize: 48,
      fontWeight: FontWeight.w700,
      letterSpacing: 1.25,
    ),
    displayMedium: TextStyle(
      fontFamily: poppinsFont,
      fontSize: 36,
      fontWeight: FontWeight.w800,
      letterSpacing: 1,
    ),
    displaySmall: TextStyle(
      fontFamily: poppinsFont,
      fontSize: 24,
      fontWeight: FontWeight.w800,
      letterSpacing: 0.5,
    ),

    /// [TITLE]
    titleLarge: TextStyle(
      fontFamily: poppinsFont,
      fontSize: 32,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.italic,
      letterSpacing: 1,
    ),
    titleMedium: TextStyle(
      fontFamily: poppinsFont,
      fontSize: 24,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.italic,
      letterSpacing: 0.25,
    ),
    titleSmall: TextStyle(
      fontFamily: poppinsFont,
      fontSize: 20,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.italic,
      letterSpacing: 0.25,
    ),

    /// [HEADLINE]
    headlineLarge: TextStyle(
      fontFamily: poppinsFont,
      fontSize: 24,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.75,
    ),
    headlineMedium: TextStyle(
      fontFamily: poppinsFont,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
    ),
    headlineSmall: TextStyle(
      fontFamily: poppinsFont,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
    ),

    // [BODY]
    bodyLarge: TextStyle(
      fontFamily: poppinsFont,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      fontFamily: poppinsFont,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    bodySmall: TextStyle(
      fontFamily: poppinsFont,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
  );

  static const TextStyle example = TextStyle(
    fontFamily: poppinsFont,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
}
