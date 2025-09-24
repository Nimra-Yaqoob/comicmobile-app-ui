import 'package:flutter/material.dart';

class HomeIndicator extends StatelessWidget {
  final double height;
  final double width;

  const HomeIndicator({super.key, this.height = 5, this.width = 100});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 4),
      child: Center(
        child: Image.asset(
          'assets/images/home_indicator.png',
          height: height,
          width: width,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
