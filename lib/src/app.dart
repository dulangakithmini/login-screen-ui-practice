import 'package:flutter/material.dart';
import 'package:login_screen/src/screens/email_verification_screen.dart';
import 'package:login_screen/src/screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Set theme to dark
      // theme: ThemeData.dark(),

      /// Set the colour of bodyText1 to pink
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.pink,
          ),
        ),
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
