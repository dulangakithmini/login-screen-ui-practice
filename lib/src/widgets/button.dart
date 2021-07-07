import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonLabel;
  final Color primaryColor;
  final Color onPrimaryColor;
  final Function onClick;

  Button(
      {@required this.buttonLabel,
      this.primaryColor,
      this.onPrimaryColor,
      this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      child: Text(buttonLabel),
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
        onPrimary: onPrimaryColor,
      ),
    );
  }
}
