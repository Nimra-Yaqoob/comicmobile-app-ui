import 'package:flutter/material.dart';
import 'reader_avatar.dart';

class ReadersList extends StatelessWidget {
  final String title;
  final List<Map<String, String>> readers;

  const ReadersList({
    super.key,
    this.title = "Top Readers",
    required this.readers,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // home indicator
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 4),
          child: Center(
            child: Image.asset(
              'assets/images/white_home.png',
              height: 4,
              width: 70,
              fit: BoxFit.contain,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Icon(Icons.more_horiz, color: Colors.white, size: 22),
            ],
          ),
        ),

        // Readers horizontal list
        Container(
          height: 100,
          margin: const EdgeInsets.symmetric(horizontal: 12),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: readers.length,
            itemBuilder: (context, index) {
              final reader = readers[index];
              return ReaderAvatar(
                imagePath: reader["image"]!,
                username: reader["name"]!,
              );
            },
          ),
        ),
      ],
    );
  }
}
