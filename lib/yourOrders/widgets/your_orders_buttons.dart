import 'package:flutter/material.dart';

import '../controller.dart';

class YourOrdersButton extends StatelessWidget {
  final text;

  const YourOrdersButton({this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xFFFDE5E9),
          fontSize: 18),
    );
  }
}
