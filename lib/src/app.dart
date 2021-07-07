import 'package:flutter/material.dart';
import 'package:login_screen/src/screens/email_verification_screen.dart';
import 'package:login_screen/src/screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // body: LoginScreen(),
          ),

      /// defines which route the app should start with
      initialRoute: '/',

      /// define the available named routes and the widgets to build when navigating to those routes
      routes: {
        '/': (context) => LoginScreen(),
        '/emailVerificationScreen': (context) => EmailVerificationScreen(),
      },
    );
  }
}
