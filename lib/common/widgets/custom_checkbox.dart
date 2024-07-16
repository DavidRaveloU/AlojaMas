import 'package:alojamas/utils/theme/theme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCheckbox extends StatefulWidget {
  final String label;
  final void Function(bool?)? onChanged;
  const CustomCheckbox({super.key, this.onChanged, required this.label});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool recuerdame = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Theme(
          data: lightTheme,
          child: Checkbox(
              value: recuerdame,
              onChanged: (value) {
                setState(() {
                  recuerdame = value!;
                });
                widget.onChanged!(recuerdame);
              }),
        ),
        Expanded(
          child: AutoSizeText(
            widget.label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
