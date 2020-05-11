import 'package:flutter/material.dart';
import 'package:editing/screens/welcome.dart';
import 'screens/registrationPage.dart';
import 'screens/loginPage.dart';
void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=>WelcomeScreen(),
        '/register': (context)=> RegistrationPage(),
        '/login': (context)=> LoginPage(),
      },


    );
  }
}