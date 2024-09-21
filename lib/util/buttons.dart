import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  String text;
  VoidCallback onPressed;

  Buttons ({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,

      child: FilledButton.tonal(
          onPressed:  onPressed,
        child: Text(text),




      ),
    );
  }
}
