import 'package:comic_moobile/widgets/manga_list_tile.dart';
import 'package:comic_moobile/widgets/trending_card.dart';
import 'package:flutter/material.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/search_bar.dart';

class MangaScreen extends StatelessWidget {
  final List<Map<String, String>> trendingManga = [
    {
      'title': 'Evangelion',
      'chapter': '269',
      'views': '1.2m',
      'image': 'assets/images/evangelion1.png',
    },
    {
      'title': 'Re:Zero',
      'chapter': '67',
      'views': '956k',
      'image': 'assets/images/rezero.png',
    },
    {
      'title': 'Jojo\'s Bizarre',
      'chapter': '122',
      'views': '67k',
      'image': 'assets/images/rezero.png',
    },
    {
      'title': 'Boruto',
      'chapter': '167',
      'views': '932k',
      'image': 'assets/images/rezero.png',
    },
  ];

  final List<Map<String, String>> allManga = [
    {
      'title': 'Kaguya-sama: Love is War',
      'chapter': '269',
      'views': '1.2m',
      'image': 'assets/images/evangelion1.png',
    },
    {
      'title': 'Horimiya',
      'chapter': '67',
      'views': '956k',
      'image': 'assets/images/rezero.png',
    },
    {
      'title': 'Komi san Cant Communicate',
      'chapter': '122',
      'views': '67k',
      'image': 'assets/images/rezero.png',
    },
    {
      'title': 'Boruto',
      'chapter': '167',
      'views': '932k',
      'image': 'assets/images/rezero.png',
    },
  ];

  MangaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DashboardHeader(),
            const SearchBarWidget(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Trending Manga",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 10),

            SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: trendingManga.length,
                itemBuilder: (context, index) {
                  final manga = trendingManga[index];
                  return TrendingCard(manga: manga);
                },
              ),
            ),

            const SizedBox(height: 12),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: allManga.length,
                itemBuilder: (context, index) {
                  final manga = allManga[index];
                  return MangaListTile(manga: manga);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
