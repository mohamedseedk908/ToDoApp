import 'package:flutter/material.dart';

class Navigation {
  static void push(BuildContext context, screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }



  static void pushAndRemove(BuildContext context, screen) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => screen), (route) => false);
  }



  static void pushReplacement(BuildContext context, screen) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}
