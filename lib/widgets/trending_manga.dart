import 'package:flutter/material.dart';
import 'manga_card.dart';

class TrendingManga extends StatelessWidget {
  const TrendingManga({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trending Manga",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.more_horiz, color: Colors.black, size: 20),
            ],
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              MangaCard(
                imagePath: 'assets/images/evangelion1.png',
                title: 'Evangelion',
              ),
              MangaCard(
                imagePath: 'assets/images/rezero.png',
                title: 'Re:Zero',
              ),
              MangaCard(
                imagePath: 'assets/images/rezero.png',
                title: 'Jojo\'s Bizarre',
              ),
              MangaCard(
                imagePath: 'assets/images/evangelion1.png',
                title: 'Naruto',
              ),
              MangaCard(
                imagePath: 'assets/images/rezero.png',
                title: 'One Piece',
              ),
              MangaCard(
                imagePath: 'assets/images/evangelion1.png',
                title: 'Attack on Titan',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
