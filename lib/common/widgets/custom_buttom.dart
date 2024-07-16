import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustiomButtom extends StatelessWidget {
  const CustiomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: null,
      icon: SvgPicture.asset(
        'assets/logo/SocialLogos/google.svg',
      ),
      label: const Text('Hola'),
    );
  }
}
