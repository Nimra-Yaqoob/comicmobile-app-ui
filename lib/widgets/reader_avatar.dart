import 'package:flutter/material.dart';

class ReaderAvatar extends StatelessWidget {
  final String imagePath;
  final String username;

  const ReaderAvatar({super.key, required this.imagePath, required this.username});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 30,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 6),
          Text(username, style: const TextStyle(fontSize: 12, color: Colors.black)),
        ],
      ),
    );
  }
}
