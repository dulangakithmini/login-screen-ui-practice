import 'package:flutter/material.dart';
import 'package:login_screen/src/widgets/logo.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Logo(),
          emailField(),
          passwordField(),
          rememberMeCheckbox(),
          login(),
          signUp(context),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail_outline),
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
      ),
      obscureText: true,
    );
  }

  Widget login() {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Login'),
      style: ElevatedButton.styleFrom(
        primary: Colors.greenAccent,
        onPrimary: Colors.black,
      ),
    );
  }

  Widget rememberMeCheckbox() {
    return Row(
      children: [
        Checkbox(
          value: false,
        ),
        Text('Remember me'),
        Spacer(),
        RichText(
          text: TextSpan(
            text: 'Forgot password?',
            style: TextStyle(
              color: Colors.greenAccent,
            ),
          ),
        )
      ],
    );
  }

  signUp(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: 'Don\'t have an account?',
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(
                text: ' Signup here',
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
}
