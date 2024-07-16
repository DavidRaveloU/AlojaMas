import 'package:alojamas/utils/theme/app_colors.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class IconCustomButton extends StatelessWidget {
  final String icon;
  final String text;
  const IconCustomButton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        icon,
        width: 23,
        height: 23,
      ),
      label: AutoSizeText(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.poppins(
            color: AppColors.primary,
            fontWeight: FontWeight.w400,
            fontSize: 14),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        side: BorderSide(
            color: AppColors.accessibleTextMedium.withOpacity(0.7), width: 1),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}
