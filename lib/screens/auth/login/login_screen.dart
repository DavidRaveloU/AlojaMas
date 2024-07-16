import 'package:alojamas/common/widgets/custom_buttom.dart';
import 'package:alojamas/screens/auth/login/widget/background_login.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Stack(
        children: <Widget>[
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
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              width: screenWidth * 0.9,
              height: screenHeight * 0.6,
              child: Column(
                children: [
                  const CustiomButtom(),
                  Form(
                      key: formKey,
                      child: const Column(
                        children: [],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
