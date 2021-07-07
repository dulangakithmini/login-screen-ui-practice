import 'package:flutter/material.dart';
import 'package:login_screen/src/screens/email_verification_screen.dart';
import 'package:login_screen/src/screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginScreen(),
      ),
      onGenerateRoute: routes,
    );
  }

  Route routes(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        return EmailVerificationScreen();
      },
    );
  }
}
