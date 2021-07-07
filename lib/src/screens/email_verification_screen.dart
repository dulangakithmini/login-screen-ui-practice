import 'package:flutter/material.dart';
import 'package:login_screen/src/widgets/logo.dart';

class EmailVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/main_image.png')),
            Logo(),
            text(),
            verifyEmail(),
            questionsEmail(context),
          ],
        ),
      ),
    );
  }

  Widget verifyEmail() {
    return ElevatedButton(
      onPressed: () {},
      child: Text('VERIFY EMAIL'),
      style: ElevatedButton.styleFrom(
        primary: Colors.greenAccent,
        onPrimary: Colors.black,
      ),
    );
  }

  Widget questionsEmail(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: 'Questions? Email us at',
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(
                text: ' contact@facio.com',
                style: TextStyle(
                  color: Colors.greenAccent,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget text() {
    return Text(
      'Hi! Please use the link below to verify your email and start using FACIO.',
      textAlign: TextAlign.justify,
    );
  }
}
