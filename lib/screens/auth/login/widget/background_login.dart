import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class BackgroundLogin extends StatelessWidget {
  const BackgroundLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final halfScreenHeight = screenHeight / 2;
    const double rotationAngle = 9.65 * pi / 180;

    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 27, 28, 31),
        width: double.infinity,
        height: halfScreenHeight,
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.1,
              left: screenWidth * -0.1,
              child: SizedBox(
                width: screenWidth * 0.7,
                height: screenHeight * 0.3,
                child: Opacity(
                  opacity: 0.2,
                  child: Image.asset('assets/img/home1.png'),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.05,
              left: screenWidth * 0.7,
              child: SizedBox(
                width: screenWidth * 0.5,
                height: screenHeight * 0.4,
                child: Transform.rotate(
                  angle: rotationAngle,
                  child: Opacity(
                    opacity: 0.2,
                    child: Image.asset('assets/img/leaf1.png'),
                  ),
                ),
              ),
            ),
            backgroundLoginText(context),
          ],
        ),
      ),
    );
  }
}

Widget backgroundLoginText(BuildContext context) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return Stack(
    children: [
      Positioned(
        top: screenHeight * 0.04,
        left: screenWidth * 0.45,
        child: SvgPicture.asset(
          'assets/logo/logo.svg',
          width: screenWidth * 0.45,
          height: screenHeight * 0.06,
        ),
      ),
      Positioned(
        top: screenHeight * 0.12,
        left: screenWidth * 0.1,
        right: screenWidth * 0.1,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Inicia sesión en tu\ncuenta',
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.08,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Positioned(
        top: screenHeight * 0.25,
        left: screenWidth * 0.05,
        right: screenWidth * 0.05,
        child: Container(
          padding: const EdgeInsets.all(2.0),
          alignment: Alignment.center,
          child: Text(
            'Ingrese su correo electrónico y contraseña para iniciar sesión',
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.04,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ],
  );
}
