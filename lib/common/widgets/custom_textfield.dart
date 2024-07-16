import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/theme/app_colors.dart';

class CustomTextfield extends StatelessWidget {
  final bool? obscureText;
  final String label;
  const CustomTextfield({super.key, required this.label, this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      style: GoogleFonts.poppins(fontSize: 12),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: GoogleFonts.poppins(
            color: AppColors.secundaryText,
            fontWeight: FontWeight.w400,
            fontSize: 12),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primary, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
              color: AppColors.accessibleTextMedium.withOpacity(0.7), width: 1),
        ),
      ),
    );
  }
}
