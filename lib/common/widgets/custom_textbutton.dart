import 'package:alojamas/utils/theme/theme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextbutton extends StatefulWidget {
  final String text;
  final void Function() onPressed;
  const CustomTextbutton(
      {super.key, required this.text, required this.onPressed});

  @override
  State<CustomTextbutton> createState() => _CustomTextbuttonState();
}

class _CustomTextbuttonState extends State<CustomTextbutton> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: lightTheme,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: AutoSizeText(
          widget.text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.poppins(fontSize: 13),
        ),
      ),
    );
  }
}
