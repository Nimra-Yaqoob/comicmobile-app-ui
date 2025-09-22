import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  const TitleText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'ComicSansMS',
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.yellowAccent,
        shadows: [
          Shadow(blurRadius: 4.0, color: Colors.black54, offset: Offset(2, 2)),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
