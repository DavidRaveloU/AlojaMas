import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/theme/app_colors.dart';

class CreateAccountText extends StatefulWidget {
  final void Function() onPressed;
  const CreateAccountText({super.key, required this.onPressed});

  @override
  State<CreateAccountText> createState() => _CreateAccountTextState();
}

class _CreateAccountTextState extends State<CreateAccountText> {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      children: [
        TextSpan(
          text: '¿Aún no tienes cuenta? ',
          style: GoogleFonts.poppins(
            color: AppColors.secundaryText,
            fontSize: 12,
          ),
        ),
        TextSpan(
          text: 'Regístrate aquí',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: AppColors.accessibleTextMedium,
              decoration: TextDecoration.underline,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              widget.onPressed();
            },
        ),
      ],
    ));
  }
}
