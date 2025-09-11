import 'package:flutter/material.dart';

class MangaCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const MangaCard({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, // 👈 fixed width so cards align nicely
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              height: 110, // 👈 smaller than parent (150)
              width: 100,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 6),

          // Title
          Flexible(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              maxLines: 1, // 👈 prevent long titles from breaking
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
