import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

final TextTheme _customTextTheme = TextTheme(
  bodyLarge: GoogleFonts.poppins(
    fontSize: 18,
    color: AppColors.accessibleTextDarker,
  ),
  bodyMedium: GoogleFonts.poppins(
    fontSize: 16,
    color: AppColors.accessibleTextMedium,
  ),
  bodySmall: GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.accessibleTextMedium,
  ),
  labelSmall: GoogleFonts.poppins(
    fontSize: 12,
    color: AppColors.secundaryText,
  ),
  labelMedium: GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.secundaryText,
  ),
  labelLarge: GoogleFonts.poppins(
    fontSize: 16,
    color: AppColors.secundaryText,
  ),
  displayLarge: GoogleFonts.poppins(
    color: AppColors.accessibleTextDarker,
  ),
  displayMedium: GoogleFonts.poppins(
    color: AppColors.accessibleTextMedium,
  ),
  displaySmall: GoogleFonts.poppins(
    color: AppColors.accessibleTextMedium,
  ),
  headlineLarge: GoogleFonts.poppins(
    color: AppColors.accessibleTextDarker,
  ),
  headlineMedium: GoogleFonts.poppins(
    color: AppColors.accessibleTextMedium,
  ),
  headlineSmall: GoogleFonts.poppins(
    color: AppColors.accessibleTextMedium,
  ),
  titleLarge: GoogleFonts.poppins(
    color: AppColors.accessibleTextDarker,
  ),
  titleMedium: GoogleFonts.poppins(
    color: AppColors.accessibleTextMedium,
  ),
  titleSmall: GoogleFonts.poppins(
    color: AppColors.accessibleTextMedium,
  ),
);

final ThemeData lightTheme = ThemeData(
  primaryColorLight: AppColors.primary,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: AppColors.background,
      backgroundColor: AppColors.primary,
      textStyle: const TextStyle(color: AppColors.background),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      minimumSize: const Size(double.infinity, 50),
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    side: BorderSide(color: AppColors.primary.withOpacity(0.8), width: 2),
    fillColor: WidgetStateColor.resolveWith((states) {
      // Color de fondo cuando está marcado
      if (states.contains(WidgetState.selected)) {
        return AppColors.primary; // Color cuando está marcado
      }
      return Colors.transparent; // Color transparente cuando no está marcado
    }),
    checkColor: WidgetStateColor.resolveWith((states) {
      // Color del check cuando está marcado
      if (states.contains(WidgetState.selected)) {
        return AppColors.background; // Color del check cuando está marcado
      }
      return Colors.transparent; // Color transparente cuando no está marcado
    }),
  ),
  textTheme: _customTextTheme,
  primaryColor: AppColors.primary,
  brightness: Brightness.light,
  dividerColor: AppColors.dividerMedium,
  colorScheme: const ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.primary,
    onPrimary: AppColors.background,
    onSecondary: AppColors.background,
  ),
  splashColor: AppColors.primary.withOpacity(0.1),
  highlightColor: AppColors.primary.withOpacity(0.1),
);
