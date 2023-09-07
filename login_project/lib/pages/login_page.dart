import 'package:flutter/material.dart';
import '../components/card_page_login.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 75),

              // ICON / LOGO
              Icon(
                Icons.lock,
                size: 100,
              ),

              SizedBox(height: 70),
              // TEXTO DE BOAS VINDAS
              Text(
                'Welcome',
                style: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CardLoginPage(),
            ],
          ),
        ),
      ),
    );
  }
}
