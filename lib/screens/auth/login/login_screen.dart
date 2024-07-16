import 'package:alojamas/common/widgets/custom_checkbox.dart';
import 'package:alojamas/common/widgets/custom_textbutton.dart';
import 'package:alojamas/common/widgets/icon_custom_button.dart';
import 'package:alojamas/screens/auth/login/widget/background_login.dart';
import 'package:alojamas/screens/auth/login/widget/create_account_text.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/widgets/custom_textfield.dart';
import '../../../utils/theme/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const Expanded(
                child: BackgroundLogin(),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 231, 231, 231),
                ),
              ),
            ],
          ),
          Positioned(
            top: screenHeight * 0.35,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              width: screenWidth * 0.9,
              child: Column(
                children: [
                  const IconCustomButton(
                    icon: 'assets/logo/social/google.svg',
                    text: 'Iniciar con Google',
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey, // Primera línea
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: AutoSizeText(
                          'o',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey, // Segunda línea
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Form(
                      key: formKey,
                      child: const Column(
                        children: [
                          CustomTextfield(label: 'Correo'),
                          SizedBox(height: 20),
                          CustomTextfield(
                              label: 'Contraseña', obscureText: true),
                        ],
                      )),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      child: AutoSizeText(
                        '¿Olvidaste tu contraseña?',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.accessibleTextMedium,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const CustomCheckbox(
                    label: 'Recordar contraseña',
                  ),
                  const SizedBox(height: 16),
                  CustomTextbutton(text: 'Iniciar sesión', onPressed: () {}),
                  const SizedBox(height: 16),
                  CreateAccountText(onPressed: () {
                    print('Registrarse');
                  }),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
