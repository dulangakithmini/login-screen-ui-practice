import 'package:flutter/material.dart';
import 'package:login_screen/src/widgets/button.dart';
import 'package:login_screen/src/widgets/logo.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(),
            _buildEmailField(),
            _buildPasswordField(),
            _buildRememberMeCheckbox(context),
            _buildLoginButton(context),
            _buildSignUp(context),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail_outline),
      ),
    );
  }

  Widget _buildPasswordField() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
      ),
      obscureText: true,
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return Button(
      buttonLabel: 'Login',
      primaryColor: Colors.greenAccent,
      onPrimaryColor: Colors.black,
      onClick: () {
        Navigator.pushNamed(context, '/emailVerificationScreen');
      },
    );
  }

  Widget _buildRememberMeCheckbox(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
        ),
        Text('Remember me'),
        Spacer(),
        RichText(
          text: TextSpan(
            children: const <TextSpan>[
              TextSpan(
                text: ' Forgot password?',
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

  Widget _buildSignUp(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Don\'t have an account?',
        style: TextStyle(
          color: Colors.black,
        ),
        children: const <TextSpan>[
          TextSpan(
            text: ' Signup here',
            style: TextStyle(
              color: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }
}
