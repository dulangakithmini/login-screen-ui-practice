import 'package:flutter/material.dart';
import 'package:login_screen/src/widgets/button.dart';
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
            verifyEmail(context),
            questionsEmail(context),
          ],
        ),
      ),
    );
  }

  Widget verifyEmail(BuildContext context) {
    return Button(
      buttonLabel: 'VERIFY EMAIL',
      primaryColor: Colors.greenAccent,
      onPrimaryColor: Colors.black,
      onClick: () {
        Navigator.pop(context);
      },
    );
  }

  Widget questionsEmail(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: 'Questions? Email us at',

            /// set the text theme to bodyText1
            style: Theme.of(context).textTheme.bodyText1,
            // style: TextStyle(
            //   color: Colors.black,
            // ),
            children: <TextSpan>[
              TextSpan(
                text: ' contact@facio.com',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.greenAccent),
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
