import 'package:flutter/material.dart';

class Credit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Text(
        "© 2023 권근호, Built with Flutter Web",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 10, color: Colors.black38),
      ),
    );
  }
}